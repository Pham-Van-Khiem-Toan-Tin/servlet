package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.Product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private DBConnection conn = new DBConnection();
    public List<Product> getAllProduct(String key) {
        List<Product> productList = new ArrayList<>();
        try {
            Connection connection = conn.getConnection();
            PreparedStatement pstmt;
            if (key != null && !key.isEmpty()) {
                String query = "SELECT * FROM products WHERE id LIKE ? OR name LIKE ? OR nd LIKE ? OR ndct_title LIKE ? OR ndct_text LIKE ? OR trinhdo LIKE ? OR khaigiang LIKE ? OR thoigian LIKE ? OR sotiethoc LIKE ? OR price LIKE ? OR title1 LIKE ? OR title2 LIKE ? OR title3 LIKE ?";
                pstmt = connection.prepareStatement(query);
                String searchKey = "%" + key + "%";
                for (int i = 1; i <= 13; i++) {
                    pstmt.setString(i, searchKey);
                }
            } else {
                String query = "SELECT * FROM products";
                pstmt = connection.prepareStatement(query);
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setName(rs.getString("name"));
                product.setImage(rs.getString("image"));
                product.setNd(rs.getString("nd"));
                product.setNdct_title(rs.getString("ndct_title"));
                product.setNdct_text(rs.getString("ndct_text"));
                product.setTrinhdo(rs.getString("trinhdo"));
                product.setKhaigiang(rs.getString("khaigiang"));
                product.setThoigian(rs.getString("thoigian"));
                product.setSotiethoc(rs.getString("sotiethoc"));
                product.setHocvien(rs.getString("hocvien"));
                product.setPrice(rs.getString("price"));
                product.setTitle1(rs.getString("title1"));
                product.setTitle2(rs.getString("title2"));
                product.setTitle3(rs.getString("title3"));
                product.setId(rs.getInt("id"));
                productList.add(product);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return productList;
    }
    public Product getProductById(int id) {
        try {
            String sql = "SELECT * FROM products WHERE id = ?";
            conn.initPrepar(sql);
            conn.getPreparedStatement().setInt(1, id);
            ResultSet rs = conn.executeSelect();
            if (rs.next()) {
                Product product = new Product();
                product.setName(rs.getString("name"));
                product.setImage(rs.getString("image"));
                product.setNd(rs.getString("nd"));
                product.setNdct_title(rs.getString("ndct_title"));
                product.setNdct_text(rs.getString("ndct_text"));
                product.setTrinhdo(rs.getString("trinhdo"));
                product.setKhaigiang(rs.getString("khaigiang"));
                product.setThoigian(rs.getString("thoigian"));
                product.setSotiethoc(rs.getString("sotiethoc"));
                product.setHocvien(rs.getString("hocvien"));
                product.setPrice(rs.getString("price"));
                product.setTitle1(rs.getString("title1"));
                product.setTitle2(rs.getString("title2"));
                product.setTitle3(rs.getString("title3"));
                product.setId(rs.getInt("id"));
                return product;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return null;
    }
    public boolean deleteProductById(int id) {
        try {
            String sql = "DELETE FROM products WHERE id = ?";
            conn.initPrepar(sql);
            conn.getPreparedStatement().setInt(1, id);
            conn.executeSelect();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
    public boolean editProduct(Product product) {
        try {
            String sql = "UPDATE `products` SET name= ?,image= ?,nd= ?,ndct_title= ?,ndct_text= ?, trinhdo= ?, khaigiang= ?, thoigian= ?, sotiethoc= ?, hocvien= ?,price= ?,title1= ?,title2= ?,title3= ? WHERE id= ? ";
            conn.initPrepar(sql);
            conn.getPreparedStatement().setString(1, product.getName());
            conn.getPreparedStatement().setString(2, product.getImage());
            conn.getPreparedStatement().setString(3, product.getNd());
            conn.getPreparedStatement().setString(4, product.getNdct_title());
            conn.getPreparedStatement().setString(5, product.getNdct_text());
            conn.getPreparedStatement().setString(6, product.getTrinhdo());
            conn.getPreparedStatement().setString(7, product.getKhaigiang());
            conn.getPreparedStatement().setString(8, product.getThoigian());
            conn.getPreparedStatement().setString(9, product.getSotiethoc());
            conn.getPreparedStatement().setString(10, product.getHocvien());
            conn.getPreparedStatement().setString(11, product.getPrice());
            conn.getPreparedStatement().setString(12, product.getTitle1());
            conn.getPreparedStatement().setString(13, product.getTitle2());
            conn.getPreparedStatement().setString(14, product.getTitle3());
            conn.getPreparedStatement().setInt(15, product.getId());
            conn.executeSelect();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
    public boolean addProduct(Product product) {
        try {
            String sql = "NSERT INTO products(name,image,nd,ndct_title,ndct_text,trinhdo,khaigiang,thoigian,sotiethoc,hocvien,price,title1,title2,title3) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            conn.initPrepar(sql);
            conn.getPreparedStatement().setString(1, product.getName());
            conn.getPreparedStatement().setString(2, product.getImage());
            conn.getPreparedStatement().setString(3, product.getNd());
            conn.getPreparedStatement().setString(4, product.getNdct_title());
            conn.getPreparedStatement().setString(5, product.getNdct_text());
            conn.getPreparedStatement().setString(6, product.getTrinhdo());
            conn.getPreparedStatement().setString(7, product.getKhaigiang());
            conn.getPreparedStatement().setString(8, product.getThoigian());
            conn.getPreparedStatement().setString(9, product.getSotiethoc());
            conn.getPreparedStatement().setString(10, product.getHocvien());
            conn.getPreparedStatement().setString(11, product.getPrice());
            conn.getPreparedStatement().setString(12, product.getTitle1());
            conn.getPreparedStatement().setString(13, product.getTitle2());
            conn.getPreparedStatement().setString(14, product.getTitle3());
            conn.executeSelect();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
}
