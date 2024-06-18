package com.example.demo2.controller.authen;

import com.example.demo2.dao.CartDao;
import com.example.demo2.dao.OrderDao;
import com.example.demo2.entity.Cart;
import com.example.demo2.entity.Order;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {
    private CartDao cartDao = new CartDao();
    private OrderDao orderDao = new OrderDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cart> cartItems = cartDao.getAllCartItems();
        double grandTotal = cartItems.stream().mapToDouble(cart -> Double.parseDouble(cart.getPrice()) * cart.getQuantity()).sum();

        req.setAttribute("cartItems", cartItems);
        req.setAttribute("grandTotal", grandTotal);
        req.getRequestDispatcher("view/checkout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String number = req.getParameter("number");
        String gmail = req.getParameter("gmail");
        String method = req.getParameter("method");
        String diachi = req.getParameter("diachi");
        List<Cart> cartItems = cartDao.getAllCartItems();
        double totalPrice = cartItems.stream().mapToDouble(cart -> Double.parseDouble(cart.getPrice()) * cart.getQuantity()).sum();;
        String totalProducts = cartItems.stream()
                .map(cart -> cart.getName() + " (" + cart.getQuantity() + ")")
                .reduce((a, b) -> a + ", " + b)
                .orElse("");

        Order order = new Order();
        order.setName(name);
        order.setNumber(number);
        order.setGmail(gmail);
        order.setMethod(method);
        order.setDiachi(diachi);
        order.setTotal_products(totalProducts);
        order.setTotal_price(String.valueOf(totalPrice));

        boolean orderInserted = orderDao.insertOrder(order);
        if (orderInserted) {
            req.setAttribute("orderMessage", "Thank you for shopping!");
            req.setAttribute("orderDetails", order);
            req.getRequestDispatcher("view/orderConfirmation.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("/checkout");
        }
    }
}
