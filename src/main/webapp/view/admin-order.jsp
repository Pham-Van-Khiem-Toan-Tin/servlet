<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ẾCH HỌC BÀI</title>
    <link rel="website icon" type="png" href="./public/img/logo.png">
    <!-- Style CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,400;1,500;1,600;1,700;1,800;1,900&family=Sen:wght@700&display=swap" rel="stylesheet">
    <!-- Icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/admin.css">
</head>
<body>
<%
    List<String> messages = (List<String>) request.getAttribute("messages");
    if (messages != null && !messages.isEmpty()) {
        for (String message : messages) {
%>
<div class="message">
    <span><%= message %></span>
    <i class="fas fa-times" onclick="this.parentElement.style.display='none';"></i>
</div>
<%
        }
    }
%>
<%@include file="header.jsp"%>

<div class="container mt-3">
    <div class="search-form">
        <form action="" method="get">
            <input type="text" name="search" placeholder="enter key to search" class="search box" value="<?php if(isset($_GET["search"])) {echo $_GET["search"]; } ?>">
            <input type="submit" value="search" name="search_user" class="btn">
        </form>
    </div>
    <section class="display-table mt-3">
        <table>
            <thead>
            <th>name</th>
            <th>number</th>
            <th>gmail</th>
            <th>method</th>
            <th>diachi</th>
            <th>total products</th>
            <th>total price</th>
            <th>Action</th>
            </thead>
            <tbody>
            <?php
                if(isset($_GET["search"]) && !empty($_GET["search"])){
                    $key= $_GET["search"];
                    $select_products = mysqli_query($conn,"SELECT *FROM `order` WHERE id LIKE '%$key%' OR name LIKE '%$key%' OR number LIKE '%$key%' OR gmail LIKE '%$key%' OR method LIKE '%$key%' OR diachi LIKE '%$key%' ");
                }else{
                    $select_products = mysqli_query($conn,"SELECT * FROM `order`");
                }
                // hien thi du lieu tu database
                if(mysqli_num_rows($select_products) > 0){
            // hien thi tu du lieu ra form
            while($row = mysqli_fetch_assoc($select_products)){
            ?>

            <tr>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['number']; ?></td>
                <td><?php echo $row['gmail']; ?></td>
                <td><?php echo $row['method']; ?></td>
                <td><?php echo $row['diachi']; ?></td>
                <td><?php echo $row['total_products']; ?></td>
                <td><?php echo $row['total_price']; ?></td>
                <td>
                    <a href="/admin/admin_order?delete=<?php echo $row['id']; ?>" class="delete-btn"
                       onclick="return confirm('are your sure you want to delete this?');"><i
                            class="fas fa-trash"></i>delete</a>

                    <a href="admin_order.php?edit=<?php echo $row['id']; ?>" class="option-btn"><i
                            class="fas fa-edit"></i>update</a>
                </td>
            </tr>

            <?php
                            }
                    }else{
                        echo "<div class='empty'>no order added</div>";
}
?>
</tbody>
</table>
</section>
<section class="edit-form-container">

    <?php
        if(isset($_GET['edit'])){
            $edit_id=$_GET['edit'];
            $edit_query= mysqli_query($conn,"SELECT * FROM `order` WHERE id=$edit_id ");
            if(mysqli_num_rows($edit_query)>0){
    while($fetch_edit= mysqli_fetch_assoc($edit_query)){
    ?>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="hidden" name="update_o_id" value="<?php echo $fetch_edit['id'];  ?>">
        <input type="text" class="box" required name="update_o_name" value="<?php echo $fetch_edit['name'];  ?>">
        <input type="text" class="box" required name="update_o_number" value="<?php echo $fetch_edit['number'];  ?>">
        <input type="text" class="box" required name="update_o_gmail" value="<?php echo $fetch_edit['gmail'];  ?>">
        <input type="text" class="box" required name="update_o_method" value="<?php echo $fetch_edit['method'];  ?>">
        <input type="text" class="box" required name="update_o_diachi" value="<?php echo $fetch_edit['diachi'];  ?>">
        <input type="submit" value="update info order" name="update_order" class="btn">
        <input type="submit" value="cancel" id="close-edit" class="option-btn">
    </form>
    <?php
                    }
                }
                echo "<script> document.querySelector('.edit-form-container').style.display = 'flex'; </script>";
    }
    ?>

</section>

</div>
<script src="${pageContext.request.contextPath}/public/js/script.js"></script>


</body>
</html>
