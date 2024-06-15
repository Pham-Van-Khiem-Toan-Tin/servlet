package com.example.demo2;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

@WebFilter(filterName = "Test", urlPatterns = "/hello-servlet", dispatcherTypes = {DispatcherType.REQUEST, DispatcherType.FORWARD})
public class TestFilter implements Filter {
    public void init(FilterConfig arg0) throws ServletException {}
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("do Filter");
        filterChain.doFilter(servletRequest, servletResponse);
    }
    public void destroy() {}
}
