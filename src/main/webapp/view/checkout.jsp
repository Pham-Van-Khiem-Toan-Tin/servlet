<%@ page import="com.example.demo2.entity.Cart" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: KhiemJP
  Date: 2024-06-18
  Time: 9:34 AM
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
</head>
<body>


<%@include file="header.jsp" %>
<%
    List<Cart> cartItems = (List<Cart>) request.getAttribute("cartItems");
    double grandTotal = (double) request.getAttribute("grandTotal");
%>


<div class="container">
    <section class="checkout-form">
        <h1 class="heading">Complete your order</h1>


        <form action="/checkout" method="post">
            <div class="display-order">
                <% if (cartItems != null && !cartItems.isEmpty()) { %>
                <% for (Cart cart : cartItems) { %>
                <span><%= cart.getName() %>(<%= cart.getQuantity() %>)</span>
                <% }
                } else { %>
                <div class="display-order"><span>Your cart is empty!</span></div>
                <% } %>
                <span class="grand-total">grand: <%= grandTotal %></span>
            </div>

            <div class="flex">
                <div class="inputBox">
                    <span>your name</span>
                    <input type="text" placeholder="enter your name" name="name" required>
                </div>
                <div class="inputBox">
                    <span>your number</span>
                    <input type="number" placeholder="enter your number" name="number" required>
                </div>
                <div class="inputBox">
                    <span>your gmail</span>
                    <input type="email" placeholder="enter your gmail" name="gmail" required>
                </div>
                <div class="inputBox">
                    <span>payment method</span>
                    <select name="method">
                        <option value="cash on delivery" selected>cash on devlivery</option>
                        <option value="credit cart">credit cart</option>
                        <option value="paypal">paypal</option>
                    </select>
                </div>
                <div class="inputBox">
                    <span>address</span>
                    <input type="text" placeholder="enter your address" name="diachi" required>
                </div>
            </div>
            <input type="submit" value="order now" name="order_btn" class="btn">
        </form>
    </section>
</div>


<!-- footer -->
<%@include file="footer.jsp" %>

</body>
</html>
