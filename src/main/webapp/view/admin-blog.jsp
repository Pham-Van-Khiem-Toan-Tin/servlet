<%@ page import="java.util.List" %>
<%@ page import="com.example.demo2.entity.Blog" %><%--
  Created by IntelliJ IDEA.
  User: KhiemJP
  Date: 2024-06-18
  Time: 5:57 AM
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
<?php

<%
    String messages = (String) request.getAttribute("message");
    if (messages != null) {
%>
<div class="message">
<span><%= messages %></span>
<i class="fas fa-times" onclick="this.parentElement.style.display='none';"></i>
</div>
<%
    }
%>
<%@include file="admin-header.jsp" %>


<div class="container">

    <section>
        <form action="/admin/blog" method="post" class="add-form" enctype="multipart/form-data">
            <h3>add a new blog</h3>
            <input type="text" name="b_name" placeholder="enter name of blog" class="box" required>
            <input type="file" name="b_image" accept="image/png,image/jpg,image/jpeg" class="box" required>
            <input type="text" name="b_img_title" placeholder="enter title of img" class="box" required>
            <input type="text" name="b_content" min="0" placeholder="enter content" class="box" required>
            <input type="text" name="b_author" min="0" placeholder="enter author" class="box" required>
            <input type="text" name="b_type" min="0" placeholder="enter type" class="box" required>
            <input type="submit" value="add blog" name="add_blog" class="btn">
        </form>
    </section>
    <div class="search-form">
        <form action="" method="get">
            <input type="text" name="search" placeholder="enter key to search" class="search box"
                   value="<%= (request.getParameter("search") != null) ? request.getParameter("search") : "" %>">
            <input type="submit" value="search" name="search_user" class="btn">
        </form>
    </div>
    <section class="display-table mt-3">
        <table>
            <thead>
            <th>image</th>
            <th>name</th>
            <th>img title</th>
            <th>content</th>
            <th>author</th>
            <th>type</th>
            <th>action</th>
            </thead>
            <tbody>
            <%
                List<Blog> blogList = (List<Blog>) request.getAttribute("blogList");
                if (blogList != null && !blogList.isEmpty()) {
                    for (Blog row : blogList) {
            %>
            <tr>
                <td><img src="${pageContext.request.contextPath}/public/image/<%= row.getImg() %>" height="100"></td>
                <td><%= row.getName() %>
                </td>
                <td><%= row.getImg_title() %>
                </td>
                <td><%= row.getContent() %>
                </td>
                <td><%= row.getAuthor() %>
                </td>
                <td><%= row.getType() %>
                </td>
                <td>
                    <a href="/admin/blog?delete=<%= row.getId() %>" class="delete-btn"
                       onclick="return confirm('are your sure you want to delete this?');"><i
                            class="fas fa-trash"></i>delete</a>

                    <a href="/admin/blog?edit=<%= row.getId() %>" class="option-btn"><i
                            class="fas fa-edit"></i>update</a>
                </td>
            </tr>

            <%
                }
            } else {
            %>
            <tr>
                <td colspan='15'> no blog added</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </section>
    <section class="edit-form-container" style="display: none">

        <%
            Blog blogEdit = (Blog) request.getAttribute("blogEdit");
            if (blogEdit != null) {
        %>
        <script> document.querySelector('.edit-form-container').style.display = 'flex'; </script>
        ";
        <form action="/admin/blog" method="post" enctype="multipart/form-data">
            <img src="${pageContext.request.contextPath}/public/image/<%= blogEdit.getImg() %>" height="200" alt="">
            <input type="hidden" name="update_b_id" value="<%= blogEdit.getId() %>">
            <input type="text" class="box" required name="update_b_name" value="<%= blogEdit.getName() %>">
            <input type="file" min="0" class="box" required name="update_b_image"
                   accept="image/png, image/jpg, image/jpeg">
            <input type="text" class="box" required name="update_b_img_title"
                   value="<%= blogEdit.getImg_title() %>">
            <input type="text" class="box" required name="update_b_content"
                   value="<%= blogEdit.getContent() %>">
            <input type="text" class="box" required name="update_b_author"
                   value="<%= blogEdit.getAuthor() %>">
            <input type="text" class="box" required name="update_b_type" value="<%= blogEdit.getType() %>">
            <input type="submit" value="update blog" name="update_blog" class="btn">
            <input type="submit" value="cancel" id="close-edit" class="option-btn">
        </form>
        <%
            }
        %>
    </section>

</div>


<script src="${pageContext.request.contextPath}/public/js/script.js"></script>
</body>
</html>
