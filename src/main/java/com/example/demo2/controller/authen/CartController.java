package com.example.demo2.controller.authen;

import com.example.demo2.dao.CartDao;
import com.example.demo2.entity.Cart;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "cart", urlPatterns = "/cart")
public class CartController extends HttpServlet {
    private CartDao cartDao = new CartDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("remove") != null) {
            cartDao.removeCartItem(Integer.parseInt(request.getParameter("remove")));
        }
        System.out.println(request.getParameter("delete"));
        if (request.getParameter("delete") != null) {
                cartDao.deleteAllCartItems();
        }
        List<Cart> cartList = cartDao.getAllCartItems();
        double grandTotal = cartList.stream().mapToDouble(cart -> Double.parseDouble(cart.getPrice()) * cart.getQuantity()).sum();
        request.setAttribute("cartItems", cartList);
        request.setAttribute("grandTotal", grandTotal);
        request.getRequestDispatcher("view/cart.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("update_update_btn") != null) {
            int cartId = Integer.parseInt(request.getParameter("update_quantity_id"));
            int quantity = Integer.parseInt(request.getParameter("update_quantity"));
            cartDao.updateCartItemQuantity(cartId, quantity);
        }
        response.sendRedirect("/cart");
    }
}
