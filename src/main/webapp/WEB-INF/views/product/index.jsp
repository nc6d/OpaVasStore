<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Product Page</title>
</head>

<body>

<h3>Products Page</h3>
<div><a href="${pageContext.request.contextPath }/">Home</a></div>
<div><a href="${pageContext.request.contextPath }/cart/index">My Cart</a></div>
<div><a href="${pageContext.request.contextPath }/product/new_product">New Product</a></div>

<table cellpadding="2" cellspacing="2" border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Buy</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id }</td>
            <td>${product.name }</td>
            <td>${product.description}</td>
            <td>${product.price }</td>
            <td align="center">
                <a href="${pageContext.request.contextPath }/cart/buy/${product.id}"
                   onclick="return cartAlert()">Buy Now</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
<script>
    function cartAlert() {
        if (confirm('Item was added to a cart! Go to cart?')) {
            window.open("${pageContext.request.contextPath }/cart/index")
        }
    }
</script>
</html>