package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.Blog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BlogDao {
    private DBConnection conn = new DBConnection();

    public String updateBlog(Blog blog) {
        String message = null;
        try {
            Connection connection = conn.getConnection();
            String updateQuery = "UPDATE `blog` SET name=?, img=?, img_title=?, content=?, author=?, type=? WHERE id=?";
            PreparedStatement pstmt = connection.prepareStatement(updateQuery);
            pstmt.setString(1, blog.getName());
            pstmt.setString(2, blog.getImg());
            pstmt.setString(3, blog.getImg_title());
            pstmt.setString(4, blog.getContent());
            pstmt.setString(5, blog.getAuthor());
            pstmt.setString(6, blog.getType());
            pstmt.setInt(7, blog.getId());
            int rowUpdate = pstmt.executeUpdate();

            message = rowUpdate > 0 ? "blog updated succesfully" : "blog could not be updated";

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return message;
    }
    public String addBlog(Blog blog) {
        String message = null;
        try {
            Connection connection = conn.getConnection();
            String updateQuery = "INSERT INTO `blog`(name,img,img_title,content,author,type) VALUES(?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = connection.prepareStatement(updateQuery);
            pstmt.setString(1, blog.getName());
            pstmt.setString(2, blog.getImg());
            pstmt.setString(3, blog.getImg_title());
            pstmt.setString(4, blog.getContent());
            pstmt.setString(5, blog.getAuthor());
            pstmt.setString(6, blog.getType());
            int rowUpdate = pstmt.executeUpdate();

            message = rowUpdate > 0 ? "blog updated succesfully" : "blog could not be updated";

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return message;
    }

    public List<Blog> getAllBlog(String key) {
        List<Blog> blogList = new ArrayList<>();
        try {
            Connection connection = conn.getConnection();
            PreparedStatement pstmt;
            if (key != null && !key.isEmpty()) {
                String query = "SELECT * FROM `blog` WHERE id LIKE ? OR name LIKE ? OR img_title LIKE ? OR content LIKE ? OR author LIKE ? OR type LIKE ?";
                pstmt = connection.prepareStatement(query);
                String searchKey = "%" + key + "%";
                for (int i = 1; i <= 6; i++) {
                    pstmt.setString(i, searchKey);
                }
            } else {
                String query = "SELECT * FROM `blog`";
                pstmt = connection.prepareStatement(query);
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setImg(rs.getString("img"));
                blog.setType(rs.getString("type"));
                blog.setName(rs.getString("name"));
                blog.setImg_title(rs.getString("img_title"));
                blog.setContent(rs.getString("content"));
                blog.setAuthor(rs.getString("author"));
                blogList.add(blog);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            conn.closeConnection();
        }
        return blogList;
    }

    public String deleteBlogById(int id) {
        String message = null;
        try {
            Connection connection = conn.getConnection();
            String query = "DELETE FROM `blog` WHERE id = ?";
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setInt(1, id);
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                message = "This blog has been deleted.";
            } else {
                message = "This blog could not be deleted.";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return message;
    }

    public Blog getBlogById(int id) {
        try {
            Connection connection = conn.getConnection();
            String query = "SELECT * FROM `blog` WHERE id = ?";
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setImg(rs.getString("img"));
                blog.setType(rs.getString("type"));
                blog.setImg_title(rs.getString("img_title"));
                blog.setContent(rs.getString("content"));
                blog.setName(rs.getString("name"));
                blog.setAuthor(rs.getString("author"));
                return blog;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return null;
    }
}
