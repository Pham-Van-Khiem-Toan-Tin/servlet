package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    private DBConnection conn = new DBConnection();
    public String deleteOrder(int deleteId) {
        String message = "";
        String query = "DELETE FROM `order` WHERE id = ?";

        try {
            conn.initPrepar(query);
            conn.getPreparedStatement().setInt(1, deleteId);
            int affectedRows = conn.getPreparedStatement().executeUpdate();
            if (affectedRows > 0) {
                message = "Product has been deleted";
            } else {
                message = "Product could not be deleted";
            }

        } catch (SQLException e) {
            e.printStackTrace();
            message = "Query failed";
        } finally {
            conn.closeConnection();
        }

        return message;
    }
    public List<Order> search(String key) {
        List<Order> orderList = new ArrayList<>();
        try {
            Connection connection = conn.getConnection();
            PreparedStatement pstmt;
            if (key != null && !key.isEmpty()) {
                String query = "SELECT * FROM `order` WHERE id LIKE ? OR name LIKE ? OR number LIKE ? OR gmail LIKE ? OR method LIKE ? OR diachi LIKE ? ";
                pstmt = connection.prepareStatement(query);
                String searchKey = "%" + key + "%";
                for (int i = 1; i <= 6; i++) {
                    pstmt.setString(i, searchKey);
                }
            } else {
                String query = "SELECT * FROM `order`";
                pstmt = connection.prepareStatement(query);
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setName(rs.getString("name"));
                order.setGmail(rs.getString("gmail"));
                order.setNumber(rs.getString("number"));
                order.setMethod(rs.getString("method"));
                order.setDiachi(rs.getString("diachi"));
                order.setTotal_products(rs.getString("total_products"));
                order.setTotal_price(rs.getString("total_price"));
                orderList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return orderList;
    }
    public Order getOrderById(int id) {
        try {
            String query = "SELECT * FROM `order` WHERE id = ?";
            conn.initPrepar(query);
            conn.getPreparedStatement().setInt(1, id);
            ResultSet rs = conn.executeSelect();
            if (rs.next()) {
                Order order = new Order();
                order.setId(rs.getInt("id"));
                order.setName(rs.getString("name"));
                order.setGmail(rs.getString("gmail"));
                order.setNumber(rs.getString("number"));
                order.setMethod(rs.getString("method"));
                order.setDiachi(rs.getString("diachi"));
                order.setTotal_products(rs.getString("total_products"));
                order.setTotal_price(rs.getString("total_price"));
                return order;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return null;
    }
    public String updateOrder(Order order) {
        String message = "";
        String query = "UPDATE `order` SET name = ?, number = ?, gmail = ?, method = ?, diachi = ? WHERE id = ?";
        try {
            conn.initPrepar(query);
            conn.getPreparedStatement().setString(1, order.getName());
            conn.getPreparedStatement().setString(2, order.getNumber());
            conn.getPreparedStatement().setString(3, order.getGmail());
            conn.getPreparedStatement().setString(4, order.getMethod());
            conn.getPreparedStatement().setString(5, order.getMethod());
            conn.getPreparedStatement().setInt(6, order.getId());
            int affectedRows = conn.getPreparedStatement().executeUpdate();
            if (affectedRows > 0) {
                message = "Update order successfully";
            } else {
                message = "Order could not be updated";
            }

        } catch (SQLException e) {
            e.printStackTrace();
            message = "Query failed";
        } finally {
            conn.closeConnection();
        }

        return message;
    }
    public boolean insertOrder(Order order) {
        String sql = "INSERT INTO `order` (name, number, gmail, method, diachi, total_products, total_price) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            Connection connection = conn.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, order.getName());
            stmt.setString(2, order.getNumber());
            stmt.setString(3, order.getGmail());
            stmt.setString(4, order.getMethod());
            stmt.setString(5, order.getDiachi());
            stmt.setString(6, order.getTotal_products());
            stmt.setString(7, order.getTotal_price());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
}
