package com.example.demo2.controller.admin;

import com.example.demo2.dao.ProductDao;
import com.example.demo2.entity.Product;
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

@WebServlet(name = "adminCourse", urlPatterns = "/admin/course")
@MultipartConfig(
        location = "C:\\Users\\KhiemJP\\Downloads\\demo2\\src\\main\\webapp\\public\\image",
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 11
)
public class AdminCourseController extends HttpServlet {
    private ProductDao productDao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("search");
        System.out.println(key);

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
        List<Product> productList = productDao.getAllProduct(key);
        request.setAttribute("productList", productList);
        request.getRequestDispatcher( "../view/admin-course.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURI();
        if (request.getParameter("update_product") != null) {
            Product product = new Product();
            product.setId(Integer.parseInt(request.getParameter("update_p_id")));
            product.setName(request.getParameter("update_p_name"));
            Part part = request.getPart("update_p_image");
            product.setImage(FileUtils.getFileName(part));
            product.setNd(request.getParameter("update_p_nd"));
            product.setNdct_title(request.getParameter("update_p_ndct_title"));
            product.setNdct_text(request.getParameter("update_p_ndct_text"));
            product.setTrinhdo(request.getParameter("update_p_trinhdo"));
            product.setKhaigiang(request.getParameter("update_p_khaigiang"));
            product.setThoigian(request.getParameter("update_p_thoigian"));
            product.setSotiethoc(request.getParameter("update_p_sotiethoc"));
            product.setHocvien(request.getParameter("update_p_hocvien"));
            product.setPrice(request.getParameter("update_p_price"));
            product.setTitle1(request.getParameter("update_p_title1"));
            product.setTitle2(request.getParameter("update_p_title2"));
            product.setTitle3(request.getParameter("update_p_title3"));
            boolean result = productDao.editProduct(product);
            request.setAttribute("message", result ? "product updated succesfully" : "product could not be updated");
        } if (request.getParameter("add_product") != null) {
            Product product = new Product();
            product.setName(request.getParameter("p_name"));
            Part part = request.getPart("p_image");
            product.setImage(FileUtils.getFileName(part));
            product.setNd(request.getParameter("p_nd"));
            product.setNdct_title(request.getParameter("p_ndct_title"));
            product.setNdct_text(request.getParameter("p_ndct_text"));
            product.setTrinhdo(request.getParameter("p_trinhdo"));
            product.setKhaigiang(request.getParameter("p_khaigiang"));
            product.setThoigian(request.getParameter("p_thoigian"));
            product.setSotiethoc(request.getParameter("p_sotiethoc"));
            product.setHocvien(request.getParameter("p_hocvien"));
            product.setPrice(request.getParameter("p_price"));
            product.setTitle1(request.getParameter("p_title1"));
            product.setTitle2(request.getParameter("p_title2"));
            product.setTitle3(request.getParameter("p_title3"));
            boolean result = productDao.addProduct(product);
            request.setAttribute("message", result ? "product add succesfully" : "could not add the product");
        }
        response.sendRedirect("/admin/course");
    }
}
