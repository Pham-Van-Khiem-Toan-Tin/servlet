package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    DBConnection conn = new DBConnection();
    public User login(String username, String password) throws SQLException {
        String sql = "SELECT * FROM `tk` WHERE username = ? AND password = ?";
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
    public User getUserById(int id) {
        try {
            String sql = "SELECT * FROM `tk` WHERE id = ?";
            conn.initPrepar(sql);
            conn.getPreparedStatement().setInt(1, id);
            ResultSet rs = conn.executeSelect();
            if (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("gmail"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
         return null;
    }
    public String addUser(User user) {
        String message = "";
        String query = "INSERT INTO `tk` (username, password, phone, gmail) VALUES(?, ?, ?, ?)";
        try {
            conn.initPrepar(query);
            PreparedStatement pstmt = conn.getPreparedStatement();
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getPhone());
            pstmt.setString(4, user.getGmail());

            int affectedRows = pstmt.executeUpdate();
            if (affectedRows > 0) {
                message = "User added successfully";
            } else {
                message = "Could not add user";
            }

        } catch (SQLException e) {
            e.printStackTrace();
            message = "Query failed";
        }

        return message;
    }

    public String deleteUser(int userId) {
        String message = "";
        String query = "DELETE FROM `tk` WHERE id = ?";

        try  {
            conn.initPrepar(query);
            PreparedStatement pstmt = conn.getPreparedStatement();
            pstmt.setInt(1, userId);
            int affectedRows = pstmt.executeUpdate();

            if (affectedRows > 0) {
                message = "User deleted successfully";
            } else {
                message = "Could not delete user";
            }

        } catch (SQLException e) {
            e.printStackTrace();
            message = "Query failed";
        }

        return message;
    }

    public String updateUser(User user) {
        String message = "";
        String query = "UPDATE `tk` SET username = ?, password = ?, phone = ?, gmail = ? WHERE id = ?";

        try  {
            conn.initPrepar(query);
            PreparedStatement pstmt = conn.getPreparedStatement();
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getPhone());
            pstmt.setString(4, user.getGmail());
            pstmt.setInt(5, user.getId());

            int affectedRows = pstmt.executeUpdate();

            if (affectedRows > 0) {
                message = "User updated successfully";
            } else {
                message = "Could not update user";
            }

        } catch (SQLException e) {
            e.printStackTrace();
            message = "Query failed";
        }

        return message;
    }

    public List<User> getAllUsers(String key) {
        List<User> users = new ArrayList<>();

        try {
            Connection connection = conn.getConnection();;
            PreparedStatement pstmt;
            if (key != null && !key.isEmpty()) {
                String query = "SELECT * FROM `tk` WHERE id LIKE ? OR username LIKE ? OR phone LIKE ? OR gmail LIKE ?";
                pstmt = connection.prepareStatement(query);
                String searchKey = "%" + key + "%";
                for (int i = 1; i <= 4; i++) {
                    pstmt.setString(i, searchKey);
                }
            } else {
                String query = "SELECT * FROM `tk`";
                pstmt = connection.prepareStatement(query);
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPhone(rs.getString("phone"));
                user.setGmail(rs.getString("gmail"));
                users.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }
    public boolean isUserExists(String username, String gmail) throws SQLException {
        String sql = "SELECT * FROM tk WHERE username = ? OR gmail = ?";
        try {
            Connection connection = conn.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, gmail);
            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }

    public boolean registerUser(User user) throws SQLException {
        String sql = "INSERT INTO tk (username, password, phone, gmail) VALUES (?, ?, ?, ?)";
        try {
            Connection connection = conn.getConnection();
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getPhone());
            stmt.setString(4, user.getGmail());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return false;
    }
}
