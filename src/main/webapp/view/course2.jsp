<%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 12:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%@include file="header.jsp"%>


<!--khoa hoc-->

<div class="container container_hero mt-2">
    <div class="card_top mb-3">
        <div class="row">

            <div class="col-md-6">
                <div class="card_title card-body">
                    <h1 class="card-title">Khóa luyện thi B1</h1>
                    <p class="card-text">Ôn tập cụ thể cho các nội dung trong kỳ thi B1</p>
                    <a href="">
                        <div class="btn btn-primary">
                            <span>Chon</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="img_course col-md-6">
                <img src="${pageContext.request.contextPath}/public/image/klt.png" class="img_card img-fluid rounded-start" alt="...">
            </div>
        </div>
    </div>
    <div class="detail row">
        <div class="col-lg-4">
            <li class="bullet-list-item">Học trực tuyến</li>
        </div>
        <div class="col-lg-4">
            <li class="bullet-list-item">Bài tập hữu ích</li>
        </div>
        <div class="col-lg-4">
            <li class="bullet-list-item">Chuẩn bị tối ưu cho kỳ thi</li>
        </div>
    </div>
    <hr>
    <div class="course_detail row">
        <div class="detail_text col-lg-8">
            <h2>HÃY CHUẨN BỊ SẴN SÀNG CHO THÀNH CÔNG CỦA BẠN</h2>
            <div class="info_text">
                Trong khóa học này, chúng tôi chuẩn bị cho bạn đạt mục tiêu chứng chỉ B1 được quốc tế công nhận của viện Goethe. Bạn sẽ làm quen với các phần khác nhau của phần thi nói và thi viết dựa trên các bài thi mô phỏng và được luyện cho quen với các kĩ thuật thi                 </div>
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
                        <span class="detail_right_td">Hàng tháng</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c3.png">
                    <p>
                        <span class="course-info-label">Thoi gian<br></span>
                        <span class="detail_right_td">Học trực tuyến | 3 tuần</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c4.png">
                    <p>
                        <span class="course-info-label">So tiet hoc moi tuan<br></span>
                        <span class="detail_right_td">Học trực tuyến | 3 x 120 phút</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c5.png">
                    <p>
                        <span class="course-info-label">Hoc vien<br></span>
                        <span class="detail_right_td">Max. 16</span>
                    </p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/public/image/c6.png">
                    <p>
                        <span class="course-info-label">Hoc phi<br></span>
                        <span class="detail_right_td">2.000.000 VND</span>
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
