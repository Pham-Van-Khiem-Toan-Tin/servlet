<%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 12:46 PM
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


<!-- -->
<section sticky-container class="word">
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                <div class="vue-sticky-placeholder" style="padding-top: 70px; ">
                    <div id="sticky" sticky-side="both"  class="tab-words vue-sticky-el bottom-sticky" style="width: 290px;">
                        <div class="bg-tab-words" >
                            <div class="title-list-tab-menu">
                                <h3 class="title">DANH MỤC CHỦ ĐỀ</h3>
                            </div>
                            <div class="search-words">
                                <input type="text" placeholder="Tìm kiếm ..." class="input-search">
                            </div>
                            <section class="ps-container scroll-area scroll-custom ps">
                                <ul class="list-tab-words list-tab-library mCustomScrollbar wp-tab">
                                    <li>
                                        <a href="javascript:;" class="item-tab active"><span>Tất cả từ vựng</span>
                                            <i  aria-hidden="true" class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="item-tab"><span>Cong nghe</span>
                                            <i aria-hidden="true" class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="item-tab"><span>Con nguoi</span>
                                            <i aria-hidden="true" class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="item-tab"><span>Noi that</span>
                                            <i aria-hidden="true" class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="item-tab"><span>Du lich</span>
                                            <i aria-hidden="true" class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="item-tab"><span>Noi that</span>
                                            <i aria-hidden="true" class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" class="item-tab"><span>Do an va Do uong</span>
                                            <i aria-hidden="true" class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </section>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8">
                <div><h3 class="name-title" style="margin-top:50px">Tất cả từ vựng</h3></div>
                <div class="line-pd"></div>

                <div class="container mt-2">
                    <br>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#tatca">Tat ca</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#a1">A1</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#a2">A2</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#b1">B1</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#b2">B2</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#c">C</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div id="tatca" class="container tab-pane active"><br>
                            <div class="row">
                                <?php
                    
                    $select_products = mysqli_query($conn,"SELECT * FROM `baihoc`");
                    if(mysqli_num_rows($select_products) > 0){
                                while($fetch_product = mysqli_fetch_assoc($select_products )){

                                ?>
                                <div class="product_list col-lg-6">
                                    <div class="card mb-3" style="max-width: 800px;">
                                        <div class="row ">
                                            <div class="col-md-4">
                                                <img src="${pageContext.request.contextPath}/public/image/<?php echo $fetch_product['image']; ?>" class="img_card img-fluid rounded-start" alt="...">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h6 class="card-title"><?php echo $fetch_product['name']; ?></h6>
                                                    <p class="card-text"><?php echo $fetch_product['sotuvung']; ?></p>
                                                    <div class="sub-info">
                                                        <span class="leve-info active-a"><?php echo $fetch_product['trinhdo']; ?></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php 
                  }
                  }
                ?>

                            </div>
                        </div>
                        <div id="a1" class="container tab-pane fade"><br>
                            <div class="row">
                                <?php
                    
                    $select_products = mysqli_query($conn,"SELECT * FROM `baihoc` WHERE trinhdo='A1' " );
                    if(mysqli_num_rows($select_products) > 0){
                                while($fetch_product = mysqli_fetch_assoc($select_products )){

                                ?>
                                <div class="product_list col-lg-6">
                                    <div class="card mb-3" style="max-width: 800px;">
                                        <div class="row ">
                                            <div class="col-md-4">
                                                <img src="${pageContext.request.contextPath}/public/image/gd.jpg" class="img_card img-fluid rounded-start" alt="...">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h6 class="card-title">[A1.1 Bài 5 ] Gia đình</h6>
                                                    <p class="card-text">16 tu vung.</p>
                                                    <div class="sub-info">
                                                        <span class="leve-info active-a">A1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <?php 
                }
                }
              ?>
                            </div>

                        </div>
                        <div id="a2" class="container tab-pane fade"><br>
                            <div class="row">
                                <?php
                    
                    $select_products = mysqli_query($conn,"SELECT * FROM `baihoc` WHERE trinhdo='A2' " );
                    if(mysqli_num_rows($select_products) > 0){
                                while($fetch_product = mysqli_fetch_assoc($select_products )){

                                ?>
                                <div class="product_list col-lg-6">
                                    <div class="card mb-3" style="max-width: 800px;">
                                        <div class="row ">
                                            <div class="col-md-4">
                                                <img src="${pageContext.request.contextPath}/public/image/gd.jpg" class="img_card img-fluid rounded-start" alt="...">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h6 class="card-title">[A1.1 Bài 5 ] Gia đình</h6>
                                                    <p class="card-text">16 tu vung.</p>
                                                    <div class="sub-info">
                                                        <span class="leve-info active-a">A1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <?php 
                }
                }
              ?>
                            </div>

                        </div>
                        <div id="b1" class="container tab-pane fade"><br>
                            <div class="row">
                                <?php
                    
                    $select_products = mysqli_query($conn,"SELECT * FROM `baihoc` WHERE trinhdo='B1' " );
                    if(mysqli_num_rows($select_products) > 0){
                                while($fetch_product = mysqli_fetch_assoc($select_products )){

                                ?>
                                <div class="product_list col-lg-6">
                                    <div class="card mb-3" style="max-width: 800px;">
                                        <div class="row ">
                                            <div class="col-md-4">
                                                <img src="${pageContext.request.contextPath}/public/image/gd.jpg" class="img_card img-fluid rounded-start" alt="...">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h6 class="card-title">[A1.1 Bài 5 ] Gia đình</h6>
                                                    <p class="card-text">16 tu vung.</p>
                                                    <div class="sub-info">
                                                        <span class="leve-info active-a">A1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <?php 
                }
                }
              ?>
                            </div>

                        </div>
                        <div id="c" class="container tab-pane fade"><br>
                            <div class="row">
                                <?php
                    
                    $select_products = mysqli_query($conn,"SELECT * FROM `baihoc` WHERE trinhdo='A1' " );
                    if(mysqli_num_rows($select_products) > 0){
                                while($fetch_product = mysqli_fetch_assoc($select_products )){

                                ?>
                                <div class="product_list col-lg-6">
                                    <div class="card mb-3" style="max-width: 800px;">
                                        <div class="row ">
                                            <div class="col-md-4">
                                                <img src="${pageContext.request.contextPath}/public/image/gd.jpg" class="img_card img-fluid rounded-start" alt="...">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body">
                                                    <h6 class="card-title">[A1.1 Bài 5 ] Gia đình</h6>
                                                    <p class="card-text">16 tu vung.</p>
                                                    <div class="sub-info">
                                                        <span class="leve-info active-a">C</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <?php 
                }
                }
              ?>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<!-- -->
<%@include file="footer.jsp"%>

</body>
</html>
