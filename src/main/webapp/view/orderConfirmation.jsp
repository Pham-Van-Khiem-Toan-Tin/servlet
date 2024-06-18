<%@ page import="com.example.demo2.entity.Order" %><%--
  Created by IntelliJ IDEA.
  User: KhiemJP
  Date: 2024-06-18
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order Confirmation</title>
</head>
<body>
    <%
    String orderMessage = (String) request.getAttribute("orderMessage");
    Order order = (Order) request.getAttribute("orderDetails");
%>
<div class='order-message-container'>
    <div class='message-container'>
        <h3><%= orderMessage %></h3>
        <div class='order-detail'>
            <span><%= order.getTotal_products() %></span>
            <span class='total'> Total: <%= order.getTotal_price() %></span>
    </div>
    <div class='customer-details'>
        <p>Your name: <span><%= order.getName() %></span></p>
        <p>Your number: <span><%= order.getNumber() %></span></p>
        <p>Your email: <span><%= order.getGmail() %></span></p>
        <p>Your payment mode: <span><%= order.getMethod() %></span></p>
        <p>(*Pay when product arrives*)</p>
    </div>
    <a href='/' class='back_btn btn'>Continue shopping</a>
</div>
    </div>
</body>
</html>
