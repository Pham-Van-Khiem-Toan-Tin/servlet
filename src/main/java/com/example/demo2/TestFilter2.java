package com.example.demo2;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

@WebFilter(filterName = "Test", urlPatterns = "/hello-servlet")
public class TestFilter2 implements Filter {
    public void init(FilterConfig arg0) throws ServletException {}
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("do Filter 2");
        filterChain.doFilter(servletRequest, servletResponse);
    }
    public void destroy() {}
}
