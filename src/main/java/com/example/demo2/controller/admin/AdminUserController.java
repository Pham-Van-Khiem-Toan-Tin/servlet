package com.example.demo2.controller.admin;

import com.example.demo2.dao.UserDao;
import com.example.demo2.entity.User;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.stream.JsonReader;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

@WebServlet(name = "adminUser", urlPatterns = {"/admin/user"})
public class AdminUserController extends HttpServlet {
    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String key = req.getParameter("search");
        String editParam = req.getParameter("edit");
        String deleteParam = req.getParameter("delete");
        if (editParam != null) {
            int userEditId = Integer.parseInt(editParam);
            User userEdit = userDao.getUserById(userEditId);
            req.setAttribute("userEdit", userEdit);
        } if (deleteParam != null) {
            int deleteId = Integer.parseInt(deleteParam);
            String message = userDao.deleteUser(deleteId);
            req.setAttribute("message", message);
        }
        List<User> userList = userDao.getAllUsers(key);
        req.setAttribute("userList", userList);
        req.getRequestDispatcher("../view/admin-user.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Read the request body into a Map
        if (req.getParameter("add_user") != null) {
            // Xử lý khi người dùng nhấn submit để thêm người dùng
            String username = req.getParameter("t_username");
            String password = req.getParameter("t_password");
            String phone = req.getParameter("t_phone");
            String gmail = req.getParameter("t_gmail");
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setPhone(phone);
            user.setGmail(gmail);
            String message = userDao.addUser(user);
            req.setAttribute("message", message);
        } else if (req.getParameter("update_user") != null) {
            String username = req.getParameter("update_t_username");
            String password = req.getParameter("update_t_password");
            String phone = req.getParameter("update_t_phone");
            String gmail = req.getParameter("update_t_gmail");
            String id = req.getParameter("update_t_id");
            User user = new User();
            user.setId(Integer.parseInt(id));
            user.setUsername(username);
            user.setPassword(password);
            user.setPhone(phone);
            user.setGmail(gmail);
            String message = userDao.updateUser(user);
            req.setAttribute("message", message);
        }
        resp.sendRedirect("/admin/user");
    }
}
