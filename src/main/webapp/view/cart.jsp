<%@ page import="com.example.demo2.entity.Cart" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: KhiemJP
  Date: 2024-06-18
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ẾCH HỌC BÀI</title>
    <link rel="website icon" type="png" href="${pageContext.request.contextPath}/public/img/logo.png">
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
    <section class="shopping-cart">
        <h1 class="heading">Shopping cart</h1>
        <table>
            <thead>
            <th>image</th>
            <th>name</th>
            <th>price</th>
            <th>quantity</th>
            <th>total price</th>
            <th>action</th>
            </thead>
            <tbody>

            <% if (cartItems != null && !cartItems.isEmpty()) { %>
            <% for (Cart cart : cartItems) { %>

            <tr>
                <td><img src="${pageContext.request.contextPath}/public/image/<%= cart.getImage() %>" height="100" alt="">
                </td>
                <td><%= cart.getName() %></td>
                <td><%= cart.getPrice() %></td>
                <td>
                    <form action="/cart" method="post">
                        <input type="hidden" min="1" name="update_quantity_id" value="<%= cart.getId() %>">
                        <input type="number" min="1" name="update_quantity" value="<%= cart.getQuantity() %>">
                        <input type="submit" value="update" name="update_update_btn">
                    </form>
                </td>
                <td><%= Double.parseDouble(cart.getPrice()) * cart.getQuantity() %>
                </td>
                <td><a href="/cart?remove=<%= cart.getId() %>" class="delete-btn"
                       onclick="return confirm('remove item from cart?')"><i class="fas fa-trash"></i>remove</a></td>
            </tr>
            <%
                    }
                }
            %>


            <tr class="table-bottom">
                <td><a href="/products" class="option-btn" style="margin-top: 0;">continue shopping cart</a></td>
                <td colspan="3"><b>GRAND TOTAL:</b></td>
                <td><%= grandTotal %>
                </td>
                <td><a href="/cart?delete=all" onclick="return confirm('are you sure you want to delete all?');"
                       class="delete-btn"><i class="fas fa-trash"></i>delete all</a></td>
            </tr>
            </tbody>
        </table>

        <div class="checkout-btn">
            <a href="/checkout" class="btn">procced to checkout</a>
        </div>
    </section>
</div>


<script type="text/javascript">
    $(document).ready(function () {

        // Sending Form data to the server
        $("#placeOrder").submit(function (e) {
            e.preventDefault();
            $.ajax({
                url: 'action.php',
                method: 'post',
                data: $('form').serialize() + "&action=order",
                success: function (response) {
                    $("#order").html(response);
                }
            });
        });

        // Load total no.of items added in the cart and display in the navbar
        load_cart_item_number();

        function load_cart_item_number() {
            $.ajax({
                url: 'action.php',
                method: 'get',
                data: {
                    cartItem: "cart_item"
                },
                success: function (response) {
                    $("#cart-item").html(response);
                }
            });
        }
    });
</script>

<!-- -->
<%@include file="footer.jsp" %>

</body>

</html>
