package com.example.demo2.controller.admin;

import com.example.demo2.dao.LessonDao;
import com.example.demo2.entity.Blog;
import com.example.demo2.entity.Lesson;
import com.example.demo2.utils.FileUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "adminLesson", urlPatterns = "/admin/lesson")
@MultipartConfig(
        location = "C:\\Users\\KhiemJP\\Downloads\\demo2\\src\\main\\webapp\\public\\image",
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 11
)
public class AdminLessonController extends HttpServlet {
    private LessonDao lessonDao = new LessonDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String edit_param = req.getParameter("edit");
        if (edit_param != null) {
            int edit_id = Integer.parseInt(edit_param);
            Lesson lesson = lessonDao.getLessonById(edit_id);
            req.setAttribute("lessonEdit", lesson);
        }
        String deleteParam = req.getParameter("delete");
        if (deleteParam != null) {
            int delete_id = Integer.parseInt(deleteParam);
            String message = lessonDao.deleteLessonById(delete_id);
            req.setAttribute("message", message);
        }
        String key = req.getParameter("search");
        List<Lesson> lessonList = lessonDao.getAllLesson(key);
        req.setAttribute("lessonList", lessonList);
        req.getRequestDispatcher("../view/admin-lesson.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("update_lesson") != null) {
            Lesson lesson = new Lesson();
            lesson.setId(Integer.parseInt(req.getParameter("update_l_id")));
            lesson.setName(req.getParameter("update_l_name"));
            lesson.setSotuvung(req.getParameter("update_l_sotuvung"));
            lesson.setTrinhdo(req.getParameter("update_l_trinhdo"));
            Part part = req.getPart("update_l_image");
            lesson.setImage(FileUtils.getFileName(part));
            String message = lessonDao.updateLesson(lesson);
            req.setAttribute("message", message);
        }
        if (req.getParameter("add_lesson") != null) {
            Lesson lesson = new Lesson();
            lesson.setName(req.getParameter("l_name"));
            lesson.setSotuvung(req.getParameter("l_sotuvung"));
            lesson.setTrinhdo(req.getParameter("l_trinhdo"));
            Part part = req.getPart("l_image");
            lesson.setImage(FileUtils.getFileName(part));
            String message = lessonDao.addLesson(lesson);
            req.setAttribute("message", message);
        }
        resp.sendRedirect("/admin/lesson");
    }
}
