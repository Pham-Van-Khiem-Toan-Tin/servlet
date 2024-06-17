package com.example.demo2.controller;

import com.example.demo2.dao.ProductDao;
import com.example.demo2.entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "adminCourse", urlPatterns = {"/admin/admin_course", "/admin/admin_course/add", "/admin/admin_course/edit"})
public class AdminCourseController extends HttpServlet {
    private ProductDao productDao = new ProductDao();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("search");
        System.out.println(key);
        List<Product> productList = productDao.getAllProduct(key);
        request.setAttribute("productList", productList);
        String edit_param = request.getParameter("edit");
        if (edit_param != null) {
            int edit_id = Integer.parseInt(edit_param);
            Product product = productDao.getProductById(edit_id);
            request.setAttribute("editProduct", product);
        }
        String deleteParam = request.getParameter("delete");
        if (deleteParam != null) {
            int delete_id = Integer.parseInt(deleteParam);
            boolean resultDelete = productDao.deleteProductById(delete_id);
            String message = "Delete course " + (resultDelete ? "Successfully" : "Fail");
        }
        request.getRequestDispatcher( "../view/admin-course.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURI();
        if (url.equals("/admin/admin_course/edit")) {
            String update_p_id = request.getParameter("update_p_id");
            String update_p_name = request.getParameter("update_p_name");
            Part update_p_image = request.getPart("update_p_image"); // Đối với file upload, sử dụng Part để lấy file
            String update_p_nd = request.getParameter("update_p_nd");
            String update_p_ndct_title = request.getParameter("update_p_ndct_title");
            String update_p_ndct_text = request.getParameter("update_p_ndct_text");
            String update_p_trinhdo = request.getParameter("update_p_trinhdo");
            String update_p_khaigiang = request.getParameter("update_p_khaigiang");
            String update_p_thoigian = request.getParameter("update_p_thoigian");
            String update_p_sotiethoc = request.getParameter("update_p_sotiethoc");
            String update_p_hocvien = request.getParameter("update_p_hocvien");
            String update_p_price = request.getParameter("update_p_price");
            String update_p_title1 = request.getParameter("update_p_title1");
            String update_p_title2 = request.getParameter("update_p_title2");
            String update_p_title3 = request.getParameter("update_p_title3");

            // Tạo đối tượng Product và set các giá trị từ form vào
            Product product = new Product();
            product.setId(Integer.parseInt(update_p_id));
            product.setImage(update_p_image.getName());
            product.setName(update_p_name);
            product.setNd(update_p_nd);
            product.setNdct_title(update_p_ndct_title);
            product.setNdct_text(update_p_ndct_text);
            product.setTrinhdo(update_p_trinhdo);
            product.setKhaigiang(update_p_khaigiang);
            product.setThoigian(update_p_thoigian);
            product.setSotiethoc(update_p_sotiethoc);
            product.setHocvien(update_p_hocvien);
            product.setPrice(update_p_price);
            product.setTitle1(update_p_title1);
            product.setTitle2(update_p_title2);
            product.setTitle3(update_p_title3);
            boolean result = productDao.editProduct(product);
            request.setAttribute("message", result ? "product updated succesfully" : "product could not be updated");
        } if (url.equals("/admin/admin_course/add")) {
            String p_id = request.getParameter("p_id");
            String p_name = request.getParameter("p_name");
            Part p_image = request.getPart("p_image"); // Đối với file upload, sử dụng Part để lấy file
            String p_nd = request.getParameter("p_nd");
            String p_ndct_title = request.getParameter("p_ndct_title");
            String p_ndct_text = request.getParameter("p_ndct_text");
            String p_trinhdo = request.getParameter("p_trinhdo");
            String p_khaigiang = request.getParameter("p_khaigiang");
            String p_thoigian = request.getParameter("p_thoigian");
            String p_sotiethoc = request.getParameter("p_sotiethoc");
            String p_hocvien = request.getParameter("p_hocvien");
            String p_price = request.getParameter("p_price");
            String p_title1 = request.getParameter("p_title1");
            String p_title2 = request.getParameter("p_title2");
            String p_title3 = request.getParameter("p_title3");

            // Tạo đối tượng Product và set các giá trị từ form vào
            Product product = new Product();
            product.setId(Integer.parseInt(p_id));
            product.setImage(p_image.getName());
            product.setName(p_name);
            product.setNd(p_nd);
            product.setNdct_title(p_ndct_title);
            product.setNdct_text(p_ndct_text);
            product.setTrinhdo(p_trinhdo);
            product.setKhaigiang(p_khaigiang);
            product.setThoigian(p_thoigian);
            product.setSotiethoc(p_sotiethoc);
            product.setHocvien(p_hocvien);
            product.setPrice(p_price);
            product.setTitle1(p_title1);
            product.setTitle2(p_title2);
            product.setTitle3(p_title3);
            boolean result = productDao.addProduct(product);
            request.setAttribute("message", result ? "product add succesfully" : "could not add the product");
        }
        response.sendRedirect("/admin/admin_course");
    }
}
