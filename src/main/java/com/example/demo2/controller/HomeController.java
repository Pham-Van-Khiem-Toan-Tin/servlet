package com.example.demo2.controller;

import com.example.demo2.dao.BlogDao;
import com.example.demo2.dao.ProductDao;
import com.example.demo2.entity.Blog;
import com.example.demo2.entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "home", urlPatterns = "/")
public class HomeController extends HttpServlet {
    private ProductDao productDao = new ProductDao();
    private BlogDao blogDao = new BlogDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productDao.getAllProduct("");
        request.setAttribute("productList", productList);
        List<Blog> blogList = blogDao.getAllBlog();
        request.setAttribute("blogList", blogList);
        request.getRequestDispatcher("view/index.jsp").forward(request, response);
    }
}
