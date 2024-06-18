package com.example.demo2.controller.admin;

import com.example.demo2.dao.OrderDao;
import com.example.demo2.entity.Order;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

@WebServlet(name = "adminOrder", urlPatterns = "/admin/order")
@MultipartConfig(
        location = "C:\\Users\\KhiemJP\\Downloads\\demo2\\src\\main\\webapp\\public\\image",
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 11
)
public class AdminOrderController extends HttpServlet {
    private OrderDao orderDao = new OrderDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("search");
        String deleteParam = request.getParameter("delete");
        String editParam = request.getParameter("edit");

        if (deleteParam != null) {
            int deleteId = Integer.parseInt(deleteParam);
            String result = orderDao.deleteOrder(deleteId);
            request.setAttribute("message", result);
        }
        if (editParam != null) {
            int editId = Integer.parseInt(editParam);
            Order order = orderDao.getOrderById(editId);
            request.setAttribute("editOrder", order);
        }
        List<Order> orderList = orderDao.search(key);
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("../view/admin-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order order = new Order();
        order.setDiachi(request.getParameter("update_o_diachi"));
        order.setMethod(request.getParameter("update_o_method"));
        order.setGmail(request.getParameter("update_o_gmail"));
        order.setNumber(request.getParameter("update_o_number"));
        order.setName(request.getParameter("update_o_name"));
        order.setId(Integer.parseInt(request.getParameter("update_o_id")));
        String message = orderDao.updateOrder(order);
        request.setAttribute("message", message);
        response.sendRedirect("/admin/order");
    }
}
