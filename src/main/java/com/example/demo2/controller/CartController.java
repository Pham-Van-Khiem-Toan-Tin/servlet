package com.example.demo2.controller;

import com.example.demo2.dao.CartDao;
import com.example.demo2.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "cart", urlPatterns = {"/cart", "/cart/count"})
public class CartController extends HttpServlet {
    private CartDao cartDao = new CartDao();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getRequestURI().endsWith("cart")) {
            request.getRequestDispatcher("page/login.jsp").forward(request, response);
        }
        if (request.getRequestURI().endsWith("count")) {
            try {
                int rowCount = cartDao.quantityProductInCart();
                request.setAttribute("row_count", rowCount);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
