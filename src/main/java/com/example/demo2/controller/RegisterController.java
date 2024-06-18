package com.example.demo2.controller;

import com.example.demo2.dao.UserDao;
import com.example.demo2.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("view/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username").trim();
        String password = req.getParameter("password").trim();
        String phone = req.getParameter("phone").trim();
        String gmail = req.getParameter("gmail").trim();
        try {
            if (userDao.isUserExists(username, gmail)) {
                resp.getWriter().println("<script language='javascript'>alert('Bị trùng tên hoặc chưa nhập tên!'); window.location='register.jsp';</script>");
            } else {
                User user = new User();
                user.setUsername(username);
                user.setPassword(password);
                user.setPhone(phone);
                user.setGmail(gmail);

                if (userDao.registerUser(user)) {
                    resp.sendRedirect("/login");
                } else {
                    resp.sendRedirect("/register");
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
