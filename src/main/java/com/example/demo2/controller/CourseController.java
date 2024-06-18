package com.example.demo2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "course", urlPatterns = {"/course", "/course2", "/course3", "/goihoc"})
public class CourseController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileJsp = null;
        String uri = req.getRequestURI();
        if (uri.endsWith("course")) fileJsp = "course.jsp";
        if (uri.endsWith("course2")) fileJsp = "course2.jsp";
        if (uri.endsWith("course3")) fileJsp = "course3.jsp";
        if (uri.endsWith("goihoc")) fileJsp = "goihoc.jsp";
        req.getRequestDispatcher("view/" + fileJsp).forward(req, resp);
    }
}
