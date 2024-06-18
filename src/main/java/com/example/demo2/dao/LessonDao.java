package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;
import com.example.demo2.entity.Blog;
import com.example.demo2.entity.Lesson;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LessonDao {
    DBConnection conn = new DBConnection();
    public List<Lesson> getAllLesson(String key) {
        List<Lesson> lessonList = new ArrayList<>();
        try {
            Connection connection = conn.getConnection();
            PreparedStatement pstmt;
            if (key != null && !key.isEmpty()) {
                String query = "SELECT *FROM baihoc WHERE id LIKE ? OR name LIKE ? OR sotuvung LIKE ? OR trinhdo LIKE ?";
                pstmt = connection.prepareStatement(query);
                String searchKey = "%" + key + "%";
                for (int i = 1; i <= 4; i++) {
                    pstmt.setString(i, searchKey);
                }
            } else {
                String query = "SELECT * FROM `baihoc`";
                pstmt = connection.prepareStatement(query);
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson();
                lesson.setId(rs.getInt("id"));
                lesson.setImage(rs.getString("image"));
                lesson.setName(rs.getString("name"));
                lesson.setSotuvung(rs.getString("sotuvung"));
                lesson.setTrinhdo(rs.getString("trinhdo"));
                lessonList.add(lesson);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            conn.closeConnection();
        }
        return lessonList;
    }
    public Lesson getLessonById(int id) {
        try {
            Connection connection = conn.getConnection();
            String query = "SELECT * FROM `baihoc` WHERE id = ?";
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                Lesson lesson = new Lesson();
                lesson.setId(rs.getInt("id"));
                lesson.setImage(rs.getString("image"));
                lesson.setName(rs.getString("name"));
                lesson.setSotuvung(rs.getString("sotuvung"));
                lesson.setTrinhdo(rs.getString("trinhdo"));
                return lesson;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return null;
    }
    public String updateLesson(Lesson lesson) {
        String message = null;
        try {
            Connection connection = conn.getConnection();
            String updateQuery = "UPDATE `baihoc` SET name=?,image=?,sotuvung=?, trinhdo=? WHERE id= ? ";
            PreparedStatement pstmt = connection.prepareStatement(updateQuery);
            pstmt.setString(1, lesson.getName());
            pstmt.setString(2, lesson.getImage());
            pstmt.setString(3, lesson.getSotuvung());
            pstmt.setString(4, lesson.getTrinhdo());
            pstmt.setInt(5, lesson.getId());
            int rowUpdate = pstmt.executeUpdate();

            message = rowUpdate > 0 ? "lesson updated succesfully" : "lesson could not be updated";

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return message;
    }
    public String addLesson(Lesson lesson) {
        String message = null;
        try {
            Connection connection = conn.getConnection();
            String updateQuery = "INSERT INTO `baihoc` (name,image,sotuvung,trinhdo) VALUES(?, ?, ? , ?)";
            PreparedStatement pstmt = connection.prepareStatement(updateQuery);
            pstmt.setString(1, lesson.getName());
            pstmt.setString(2, lesson.getImage());
            pstmt.setString(3, lesson.getSotuvung());
            pstmt.setString(4, lesson.getTrinhdo());
            int rowUpdate = pstmt.executeUpdate();

            message = rowUpdate > 0 ? "lesson add succesfully" : "could not add the lesson";

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return message;
    }
    public String deleteLessonById(int id) {
        String message = null;
        try {
            Connection connection = conn.getConnection();
            String query = "DELETE FROM `baihoc` WHERE id = ?";
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setInt(1, id);
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                message = "this lesson has been deleted.";
            } else {
                message = "this lesson could not be deleted";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            conn.closeConnection();
        }
        return message;
    }
}
