<%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 12:43 PM
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./public/css/goihoc.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,400;1,500;1,600;1,700;1,800;1,900&family=Sen:wght@700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css">

    <title>Document</title>
</head>
<body>
<%@include file="header.jsp"%>


<div>
    <section class="study-package">
        <div class="study-package--title">
            <h2>
                <a href="javascript:;">Gói học của Ech-elearning</a>
            </h2>
        </div>
        <div class="study-package--table">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="table-mb">
                            <div class="table-main">
                                <table class="table-study-package table table-last-child">
                                    <thead>
                                    <tr>
                                        <th scope="col"></th> <th scope="col">
                                        <span>Lộ trình học</span>
                                    </th>
                                        <th scope="col">
                                            <span>Giải trí</span>
                                        </th>
                                        <th scope="col">
                                            <span>Luyện thi</span>
                                        </th>
                                        <th scope="col">
                                            <span>Tổng hợp</span>
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th data-title="">Kho từ vựng 50.000 từ</th>
                                        <td data-title="Kho từ vựng 50.000 từ">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Kho từ vựng 50.000 từ">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Kho từ vựng 50.000 từ">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Kho từ vựng 50.000 từ">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th data-title="">Kho ngữ pháp tổng hợp</th>
                                        <td data-title="Kho ngữ pháp tổng hợp">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Kho ngữ pháp tổng hợp">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Kho ngữ pháp tổng hợp">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Kho ngữ pháp tổng hợp">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th data-title="">Bộ tài liệu tổng hợp</th>
                                        <td data-title="Bộ tài liệu tổng hợp">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Bộ tài liệu tổng hợp">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Bộ tài liệu tổng hợp">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Bộ tài liệu tổng hợp">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th data-title="">Lộ trình học thiết kế riêng (A1-C1)</th>
                                        <td data-title="Lộ trình học thiết kế riêng (A1-C1)">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Lộ trình học thiết kế riêng (A1-C1)">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Lộ trình học thiết kế riêng (A1-C1)">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Lộ trình học thiết kế riêng (A1-C1)">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th data-title="">Kho video giải trí không giới hạn</th>
                                        <td data-title="Kho video giải trí không giới hạn">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Kho video giải trí không giới hạn">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Kho video giải trí không giới hạn">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Kho video giải trí không giới hạn">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th data-title="">Kho 200 đề thi tiếng Đức</th>
                                        <td data-title="Kho 200 đề thi tiếng Đức">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Kho 200 đề thi tiếng Đức">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Kho 200 đề thi tiếng Đức">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Kho 200 đề thi tiếng Đức">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th data-title="">Hỗ trợ 24/7</th>
                                        <td data-title="Hỗ trợ 24/7">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Hỗ trợ 24/7">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                        <td data-title="Hỗ trợ 24/7">
                                            <span class="line-table"></span>
                                        </td>
                                        <td data-title="Hỗ trợ 24/7">
                                            <i class="fas fa-check-circle"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th></th>
                                        <td data-title="Khóa học">
                                            <div class="table-price-course active-pay">
                                                <p class="money-dolar">13.9$</p>
                                                <p class="price">299,000VND</p>
                                                <p class="price-month"><span>99,667 ₫</span>/Tháng

                                                </p>
                                                <div class="btn-buy">
                                                    <a href="">Mua ngay</a>
                                                </div>
                                                <div class="table-pay-lesson"></div>
                                            </div>
                                        </td>
                                        <td data-title="Khóa học">
                                            <div class="table-price-course active-pay">
                                                <p class="money-dolar">9.9$</p>
                                                <p class="price">230,000VND</p>
                                                <p class="price-month"><span>76,667 ₫</span>/Tháng

                                                </p>
                                                <div class="btn-buy">
                                                    <a href="">Mua ngay</a>
                                                </div>
                                                <div class="table-pay-lesson"></div>
                                            </div>
                                        </td>
                                        <td data-title="Khóa học">
                                            <div class="table-price-course active-pay">
                                                <p class="money-dolar">10$</p>
                                                <p class="price">231,000VND</p>
                                                <p class="price-month"><span>77,000 ₫</span>/Tháng

                                                </p>
                                                <div class="btn-buy">
                                                    <a href="">Mua ngay</a>
                                                </div>
                                                <div class="table-pay-lesson">

                                                </div>
                                            </div>
                                        </td>
                                        <td data-title="Khóa học">
                                            <div class="table-price-course active-pay">
                                                <p class="money-dolar">19.9$</p>
                                                <p class="price">450,000đ</p>
                                                <p class="price-month"><span>150,000 ₫</span>/Tháng

                                                </p>
                                                <div class="btn-buy">
                                                    <a href="">Mua ngay</a>
                                                </div>
                                                <div class="table-pay-lesson">

                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="table-last-child--1">

                                </div>
                                <div class="table-last-child--2">

                                </div>
                                <div class="table-last-child--3">

                                </div>
                                <div class="table-last-child--4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file="footer.jsp"%>

</body>
</html>
