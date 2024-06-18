package com.example.demo2.controller;

import com.example.demo2.dao.LessonDao;
import com.example.demo2.entity.Lesson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "library", urlPatterns = {"/thuvien", "/nguphap"})
public class LibraryController extends HttpServlet {
    LessonDao lessonDao = new LessonDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileJsp = null;
        String uri = req.getRequestURI();
        if (uri.endsWith("thuvien")) {
            fileJsp = "thuvien.jsp";
            List<Lesson> lessonList = lessonDao.getAllLesson(null);
            req.setAttribute("lessonList", lessonList);

        }
        if (uri.endsWith("nguphap")) fileJsp = "nguphap.jsp";
        req.getRequestDispatcher("view/" + fileJsp).forward(req, resp);
    }
}
