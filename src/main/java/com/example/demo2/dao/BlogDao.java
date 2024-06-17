package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.Blog;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BlogDao {
    private DBConnection conn = new DBConnection();

    public List<Blog> getAllBlog() {
        List<Blog> blogList = new ArrayList<>();
        String sql = "SELECT * FROM blog";
        try {
            conn.initPrepar(sql);
            ResultSet rs = conn.executeSelect();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));
                blog.setImg(rs.getString("img"));
                blog.setType(rs.getString("type"));
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
}
