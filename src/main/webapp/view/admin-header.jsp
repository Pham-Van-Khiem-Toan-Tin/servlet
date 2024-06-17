<%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 3:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <nav class="sticky-top navbar navbar-expand-sm navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><img src="${pageContext.request.contextPath}/public/image/logo.png" alt="Avatar Logo" style="width:100px;" class="rounded-pill"></a>
            <div class="collapse navbar-collapse" id="collapsibleNavbar col-12">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/admin_course">Khóa học</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/admin_order">Đơn hàng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin_user">User</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin_blog">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin_test">Bài thi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin_lesson">Bài học</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><i class="fa-solid fa-user" style="margin-right:5px"></i>Admin</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/admin">Thoát</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
