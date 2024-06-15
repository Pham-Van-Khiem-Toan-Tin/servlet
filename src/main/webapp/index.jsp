<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<p id="test"></p>
<span id="test1"></span>
</body>
<script type="text/javascript" src="js/index.js">

</script>
<script type="text/javascript">
  <%@include file="js/index1.js" %>
</script>
</html>