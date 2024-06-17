package com.example.demo2.controller;

import com.example.demo2.dao.CartDao;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;
import java.sql.SQLException;

@WebFilter("/*")
public class CartFilter implements Filter {
    private CartDao cartDao = new CartDao();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        int rowCount = 0;
        try {
            rowCount = cartDao.quantityProductInCart();
            servletRequest.setAttribute("row_count", rowCount);
            filterChain.doFilter(servletRequest, servletResponse);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
