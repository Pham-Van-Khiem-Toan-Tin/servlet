<%@ page import="java.util.List" %>
<%@ page import="com.example.demo2.entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 3:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ẾCH HỌC BÀI</title>
    <link rel="website icon" type="png" href="${pageContext.request.contextPath}/public/image/logo.png">
    <!-- Style CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,400;1,500;1,600;1,700;1,800;1,900&family=Sen:wght@700&display=swap"
          rel="stylesheet">
    <!-- Icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/admin.css">
</head>
<body>
<%
    List<String> messages = (List<String>) request.getAttribute("message");
    if (messages != null && !messages.isEmpty()) {
        for (String msg : messages) {
%>
<div class="message">
    <span><%= msg %></span>
    <i class="fas fa-times" onclick="this.parentElement.style.display='none';"></i>
</div>
<%
        }
    }
%>
<%@include file="admin-header.jsp" %>


<div class="container">

    <section>
        <form action="/admin/test" method="post" class="add-form" enctype="multipart/form-data">
            <h3>add a new product</h3>
            <input type="text" name="p_name" placeholder="enter the product name" class="box" required>
            <input type="file" name="p_image" accept="image/png,image/jpg,image/jpeg" class="box" required>
            <input type="text" name="p_nd" min="0" placeholder="enter nội dung" class="box" required>
            <input type="text" name="p_ndct_title" min="0" placeholder="enter nội dung chi tiết title" class="box"
                   required>
            <input type="text" name="p_ndct_text" min="0" placeholder="enter nội dung chi tiết text" class="box"
                   required>
            <input type="text" name="p_trinhdo" min="0" placeholder="enter trình độ" class="box" required>
            <input type="text" name="p_khaigiang" min="0" placeholder="enter khai giảng" class="box" required>
            <input type="text" name="p_thoigian" min="0" placeholder="enter thoigian" class="box" required>
            <input type="text" name="p_sotiethoc" min="0" placeholder="enter số tiết học" class="box" required>
            <input type="text" name="p_hocvien" min="0" placeholder="enter số học viên" class="box" required>
            <input type="text" name="p_price" min="0" placeholder="enter the product price" class="box" required>
            <input type="text" name="p_title1" min="0" placeholder="enter title1" class="box" required>
            <input type="text" name="p_title2" min="0" placeholder="enter title2" class="box" required>
            <input type="text" name="p_title3" min="0" placeholder="enter title3" class="box" required>
            <input type="submit" value="add the product" name="add_product" class="btn">
        </form>
    </section>
    <div class="search-form">
        <form action="/admin/test" method="get">
            <input type="text" name="search" placeholder="enter key to search" class="search box"
                   value="<%= (request.getParameter("search") != null) ? request.getParameter("search") : "" %>">
            <input type="submit" value="search" name="search_user" class="btn">
        </form>
    </div>
    <section class="display-table mt-3">
        <table>
            <thead>
            <th>name</th>
            <th>image</th>
            <th>nội dung</th>
            <th>nd chi tiết title</th>
            <th>nd chi tiết text</th>
            <th>trình độ</th>
            <th>khai giảng</th>
            <th>thời gian</th>
            <th>số tiết học</th>
            <th>học viên</th>
            <th>price</th>
            <th>title1</th>
            <th>title2</th>
            <th>title3</th>
            <th>action</th>
            </thead>
            <tbody>
            <%
                List<Product> productList = (List<Product>) request.getAttribute("productList");
                if (productList != null) {
                    for (Product row : productList) {
            %>

            <tr>
                <td><%= row.getName() %>
                </td>
                <td><img src="${pageContext.request.contextPath}/public/image/<%= row.getImage() %>" height="100"></td>
                <td><%= row.getNd()%>
                </td>
                <td><%= row.getNdct_title()%>
                </td>
                <td><%= row.getNdct_text()%>
                </td>
                <td><%= row.getTrinhdo()%>
                </td>
                <td><%= row.getKhaigiang()%>
                </td>
                <td><%= row.getThoigian()%>
                </td>
                <td><%= row.getSotiethoc()%>
                </td>
                <td><%= row.getHocvien()%>
                </td>
                <td><%= row.getPrice()%>
                </td>
                <td><%= row.getTitle1()%>
                </td>
                <td><%= row.getTitle2()%>
                </td>
                <td><%= row.getTitle3()%>
                </td>

                <td>
                    <a href="/admin/test?delete=<%=row.getId()%>" class="delete-btn"
                       onclick="return confirm('are your sure you want to delete this?');"><i
                            class="fas fa-trash"></i>delete</a>

                    <a href="/admin/test?edit=<%= row.getId() %>" class="option-btn"><i
                            class="fas fa-edit"></i>update</a>
                </td>
            </tr>

            <%
                }
            } else {
            %>
            <tr>
                <td colspan="15">No product added</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </section>
    <section class="edit-form-container" style="display: none;">
        <%
            Product editProduct = (Product) request.getAttribute("editProduct");
            if (editProduct != null) {
        %>
        <script>
            document.querySelector('.edit-form-container').style.display = 'flex';
        </script>
        <form action="/admin/test" method="post" enctype="multipart/form-data">
            <img src="<%=request.getContextPath()%>/public/img/<%=editProduct.getImage()%>" height="200" alt="">
            <input type="hidden" name="update_p_id" value="<%=editProduct.getId()%>">
            <input type="text" class="box" required name="update_p_name" value="<%=editProduct.getName()%>">
            <input type="file" class="box" required name="update_p_image" accept="image/png, image/jpg, image/jpeg">
            <input type="text" class="box" required name="update_p_nd" value="<%=editProduct.getNd()%>">
            <input type="text" class="box" required name="update_p_ndct_title" value="<%=editProduct.getNdct_title()%>">
            <input type="text" class="box" required name="update_p_ndct_text" value="<%=editProduct.getNdct_text()%>">
            <input type="text" class="box" required name="update_p_trinhdo" value="<%=editProduct.getTrinhdo()%>">
            <input type="text" class="box" required name="update_p_khaigiang" value="<%=editProduct.getKhaigiang()%>">
            <input type="text" class="box" required name="update_p_thoigian" value="<%=editProduct.getThoigian()%>">
            <input type="text" class="box" required name="update_p_sotiethoc" value="<%=editProduct.getSotiethoc()%>">
            <input type="text" class="box" required name="update_p_hocvien" value="<%=editProduct.getHocvien()%>">
            <input type="number" min="0" class="box" required name="update_p_price" value="<%=editProduct.getPrice()%>">
            <input type="text" class="box" required name="update_p_title1" value="<%=editProduct.getTitle1()%>">
            <input type="text" class="box" required name="update_p_title2" value="<%=editProduct.getTitle2()%>">
            <input type="text" class="box" required name="update_p_title3" value="<%=editProduct.getTitle3()%>">
            <input type="submit" value="Update the product" name="update_product" class="btn">
            <input type="submit" value="Cancel" id="close-edit" class="option-btn">
        </form>
        <%
            }
        %>
    </section>

</div>


<script src="${pageContext.request.contextPath}/public/js/script.js"></script>
</body>
</html>
