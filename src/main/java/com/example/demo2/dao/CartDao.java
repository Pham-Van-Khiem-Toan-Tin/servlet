package com.example.demo2.dao;

import com.example.demo2.config.DBConnection;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}
