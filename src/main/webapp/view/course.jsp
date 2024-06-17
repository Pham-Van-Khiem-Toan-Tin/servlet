<%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 12:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<?php

@include 'config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Style CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,400;1,500;1,600;1,700;1,800;1,900&family=Sen:wght@700&display=swap" rel="stylesheet">
    <!-- Icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css">
</head>
<body>
<?php include 'header.php'; ?>


<!--khoa hoc-->

<div class="container container_hero mt-2">
    <div class="card_top mb-3">
        <div class="row">

            <div class="col-md-6">
                <div class="card_title card-body">
                    <h1 class="card-title">Khóa học thanh thiếu niên</h1>
                    <p class="card-text">Trải nghiệm và thực hành ngôn ngữ một cách tích cực thông qua các trò chơi đóng vai, các bài phỏng vấn hoặc các dự án</p>
                    <a href="">
                        <div class="btn btn-primary">
                            <span>Chon</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="img_course col-md-6">
                <img src="${pageContext.request.contextPath}/public/image/khttn.png" class="img_card img-fluid rounded-start" alt="...">
            </div>
        </div>
    </div>
    <div class="detail row">
        <div class="col-lg-4">
            <li class="bullet-list-item">Dành cho lứa tuổi 12 đến 15</li>
        </div>
        <div class="col-lg-4">
            <li class="bullet-list-item">Chủ đề học phù hợp với lứa tuổi</li>
        </div>
        <div class="col-lg-4">
            <li class="bullet-list-item">Hình thức học tương tác qua trò chơi</li>
        </div>
    </div>
    <hr>
    <div class="course_detail row">
        <div class="detail_text col-lg-8">
            <h2>Học tiếng Đức thật vui</h2>
            <div class="info_text">
                Trong các tiết học định hướng giao tiếp và đa phương tiện của chúng tôi các bạn thanh thiếu niên sẽ nhanh chóng thông thạo các nguyên tắc cơ bản của tiếng Đức. Bên cạnh các bài tập ngữ pháp và từ vựng chúng tôi đặc biệt chú trọng tới các bài tập mang tính sáng tạo và thông qua các trò chơi.
                <br>
                <br>
                Ngay từ khi bắt đầu, các bạn học viên được học với các giáo trình của Đức và từ tiết học đầu tiên đã giao tiếp trong lớp học bằng tiếng Đức. Trọng tâm của tất cả các chủ đề học đều hướng tới cuộc sống hàng ngày của thanh thiếu niên và các bạn sẽ được tìm hiểu thêm về cuộc sống cũng như lịch sử, văn hóa và truyền thống của Đức.
            </div>
        </div>
        <div class="detail_right col-lg-4">
            <ul>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c1.png">
                    <p>
                        <span class="course-info-label">Trình độ<br></span>
                        <span class="detail_right_td">A1-B1</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c2.png">
                    <p>
                        <span class="course-info-label">Khai giang<br></span>
                        <span class="detail_right_td">3 thang/ lan</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c3.png">
                    <p>
                        <span class="course-info-label">Thoi gian<br></span>
                        <span class="detail_right_td">12 tuan</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c4.png">
                    <p>
                        <span class="course-info-label">So tiet hoc moi tuan<br></span>
                        <span class="detail_right_td">2 buổi x 150 phút/buổi</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c5.png">
                    <p>
                        <span class="course-info-label">Hoc vien<br></span>
                        <span class="detail_right_td">Max. 15</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c6.png">
                    <p>
                        <span class="course-info-label">Hoc phi<br></span>
                        <span class="detail_right_td">700.000 VND</span>
                    </p>
                </li>
            </ul>
        </div>
    </div>
</div>


<!-- -->
<%@include file="footer.jsp"%>

</body>
</html>
