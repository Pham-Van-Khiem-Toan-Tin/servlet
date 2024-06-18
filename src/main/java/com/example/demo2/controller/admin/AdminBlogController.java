package com.example.demo2.controller.admin;

import com.example.demo2.dao.BlogDao;
import com.example.demo2.entity.Blog;
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

@WebServlet(name = "adminBlog", urlPatterns = "/admin/blog")
@MultipartConfig(
        location = "C:\\Users\\KhiemJP\\Downloads\\demo2\\src\\main\\webapp\\public\\image",
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 11
)
public class AdminBlogController extends HttpServlet {
    private BlogDao blogDao = new BlogDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("search");
        String edit_param = request.getParameter("edit");
        if (edit_param != null) {
            int edit_id = Integer.parseInt(edit_param);
            Blog blog = blogDao.getBlogById(edit_id);
            request.setAttribute("blogEdit", blog);

        }
        String deleteParam = request.getParameter("delete");
        if (deleteParam != null) {
            int delete_id = Integer.parseInt(deleteParam);
            String message = blogDao.deleteBlogById(delete_id);
            request.setAttribute("message", message);
        }
        List<Blog> blogList = blogDao.getAllBlog(key);
        request.setAttribute("blogList", blogList);
        request.getRequestDispatcher("../view/admin-blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("update_blog") != null) {
            Blog blog = new Blog();
            blog.setName(request.getParameter("update_b_name"));
            blog.setImg_title(request.getParameter("update_b_img_title"));
            blog.setContent(request.getParameter("update_b_content"));
            blog.setAuthor(request.getParameter("update_b_author"));
            blog.setType(request.getParameter("update_b_type"));
            Part part = request.getPart("update_b_image");
            blog.setImg(FileUtils.getFileName(part));
            String message = blogDao.updateBlog(blog);
            request.setAttribute("message", message);
        }
        if (request.getParameter("add_blog") != null) {
            Blog blog = new Blog();
            blog.setName(request.getParameter("b_name"));
            blog.setImg_title(request.getParameter("b_img_title"));
            blog.setContent(request.getParameter("b_content"));
            blog.setAuthor(request.getParameter("b_author"));
            blog.setType(request.getParameter("b_type"));
            Part part = request.getPart("b_image");
            blog.setImg(FileUtils.getFileName(part));
            String message = blogDao.addBlog(blog);
            request.setAttribute("message", message);
        }
        response.sendRedirect("/admin/blog");
    }


}
