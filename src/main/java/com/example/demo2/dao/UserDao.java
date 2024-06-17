package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    DBConnection conn = new DBConnection();
    public User login(String username, String password) throws SQLException {
        String sql = "SELECT * FROM tk WHERE username = ? AND password = ?";
        try {
            conn.initPrepar(sql);
            conn.getPreparedStatement().setString(1, username);
            conn.getPreparedStatement().setString(2, password);
            ResultSet rs = conn.executeSelect();
            if (rs.next()) {
                User user = new User();
                user.setUsername(rs.getString("username"));
                user.setRole(rs.getString("role"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return null;
    }
}
