<%@ page import="java.util.List" %>
<%@ page import="com.example.demo2.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: KhiemJP
  Date: 2024-06-17
  Time: 11:48 PM
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
        <form action="/admin/user" method="post" class="add-form">
            <h3>add a new user</h3>
            <input type="hidden" name="add_user" value="add user">
            <input type="text" name="t_username" placeholder="enter username" class="box" required>
            <input type="text" name="t_password" min="0" placeholder="enter password" class="box" required>
            <input type="text" name="t_phone" min="0" placeholder="enter phone" class="box" required>
            <input type="text" name="t_gmail" min="0" placeholder="enter gmail" class="box" required>
            <input type="submit" value="add_user" name="add_user" class="btn">
        </form>
    </section>
    <div class="search-form">
        <form action="/admin/user" method="get">
            <input type="text" name="search" placeholder="enter key to search" class="search box"
                   value="<%= (request.getParameter("search") != null) ? request.getParameter("search") : "" %>">
            <input type="submit" value="search" name="search_user" class="btn">
        </form>
    </div>
    <section class="display-table mt-3">
        <table>
            <thead>
            <th>username</th>
            <th>password</th>
            <th>phone</th>
            <th>gmail</th>
            <th>action</th>
            </thead>
            <tbody>
            <%
                List<User> userList = (List<User>) request.getAttribute("userList");
                if (userList != null) {
                    for (User row : userList) {
            %>

            <tr>
                <td><%= row.getUsername() %>
                </td>
                <td><%= row.getPassword() %>
                </td>
                <td><%= row.getPhone() %>
                </td>
                <td><%= row.getGmail() %>
                </td>

                <td>
                    <a href="/admin/user?delete=<%= row.getId() %>" class="delete-btn"
                       onclick="return confirm('are your sure you want to delete this?');"><i
                            class="fas fa-trash"></i>delete</a>

                    <a href="/admin/user?edit=<%= row.getId() %>" class="option-btn"><i
                            class="fas fa-edit"></i>update</a>
                </td>
            </tr>

            <%
                }
            } else {
            %>
            <tr>
                <td colspan="15">no user added</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </section>
    <section class="edit-form-container" style="display: none">
        <%
            User userEdit = (User) request.getAttribute("userEdit");
            if (userEdit != null) {
        %>
        <script> document.querySelector('.edit-form-container').style.display = 'flex'; </script>
        <form action="/admin/user" method="post">
            <input type="hidden" name="update_t_id" value="<%= userEdit.getId() %>">
            <input type="hidden" value="update info user" name="update_user">
            <input type="text" class="box" required name="update_t_username"
                   value="<%= userEdit.getUsername() %>">
            <input type="text" class="box" required name="update_t_password"
                   value="<%= userEdit.getPassword() %>">
            <input type="text" class="box" required name="update_t_phone" value="<%= userEdit.getPhone() %>">
            <input type="text" class="box" required name="update_t_gmail" value="<%= userEdit.getGmail() %>">
            <input type="submit" value="update info user" name="update_user" class="btn">
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
