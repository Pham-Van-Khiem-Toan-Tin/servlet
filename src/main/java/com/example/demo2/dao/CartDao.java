package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.Cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDao {
    private DBConnection conn = new DBConnection();
    public int quantityProductInCart() throws SQLException, IOException {
        String sql = "SELECT COUNT(*) AS row_count FROM cart";
        try {
            conn.initPrepar(sql);
            ResultSet rs = conn.executeSelect();
            int rowCount = 0;
            if (rs.next()) {
                rowCount = rs.getInt("row_count");
                return rowCount;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return 0;
    }
    public boolean addToCart(String productName, String productPrice, String productImage, int productQuantity) {
        try {
            // Kiểm tra sản phẩm đã có trong giỏ hàng hay chưa
            String checkCartQuery = "SELECT * FROM cart WHERE name = ?";
            PreparedStatement checkStmt = conn.getConnection().prepareStatement(checkCartQuery);
            checkStmt.setString(1, productName);
            ResultSet resultSet = checkStmt.executeQuery();
            if (resultSet.next()) {
                // Sản phẩm đã tồn tại trong giỏ hàng
                return false;
            } else {
                // Thêm sản phẩm vào giỏ hàng
                String insertQuery = "INSERT INTO cart (name, price, image, quantity) VALUES (?, ?, ?, ?)";
                PreparedStatement insertStmt = conn.getConnection().prepareStatement(insertQuery);
                insertStmt.setString(1, productName);
                insertStmt.setString(2, productPrice);
                insertStmt.setString(3, productImage);
                insertStmt.setInt(4, productQuantity);
                int rowsAffected = insertStmt.executeUpdate();
                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
    public List<Cart> getAllCartItems() {
        List<Cart> cartItems = new ArrayList<>();
        String sql = "SELECT * FROM `cart`";
        try {
            Connection connection = conn.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Cart cart = new Cart();
                cart.setId(rs.getInt("id"));
                cart.setName(rs.getString("name"));
                cart.setQuantity(rs.getInt("quantity"));
                cart.setPrice(rs.getString("price"));
                cart.setImage(rs.getString("image"));
                cartItems.add(cart);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return cartItems;
    }
    public boolean updateCartItemQuantity(int id, int quantity) {
        String sql = "UPDATE cart SET quantity = ? WHERE id = ?";
        try {
            Connection connection = conn.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, quantity);
            stmt.setInt(2, id);
            return stmt.executeUpdate() > 0;
        }   catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
    public boolean removeCartItem(int id) {
        String sql = "DELETE FROM `cart` WHERE id = ?";
        try  {
            Connection connection = conn.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }

    public boolean deleteAllCartItems() {
        String sql = "DELETE FROM `cart`";
        try  {
            Connection connection = conn.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
}
