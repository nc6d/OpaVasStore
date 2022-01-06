<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Cart Page</title>
</head>
<body>

    <jsp:include page="../header.jsp"></jsp:include>

<table cellpadding="2" cellspacing="2" border="1">
    <tr>
        <th>Option</th>
        <%--        <th>Id</th>--%>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Sub Total</th>
    </tr>
    <c:set var="total" value="0"></c:set>
    <c:forEach var="item" items="${sessionScope.cart }">
        <c:set var="total"
               value="${total + item.product.price * item.quantity }"></c:set>
        <tr>
            <td align="center"><a
                    href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
                    onclick="return confirm('Are you sure?')">Remove</a></td>
                <%--            <td>${item.product.id }</td>--%>
            <td>${item.product.name }</td>
            <td>${item.product.price }</td>
            <td>${item.quantity }</td>
            <td>${item.product.price * item.quantity }</td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4" align="right">Sum</td>
        <td>${total}</td>
    </tr>
</table>
<br>

<div>
    <a href="${pageContext.request.contextPath }/cart/remove"
       onclick="return confirm('Are you sure?')">Remove All</a>
</div>
<div>
    <a href="${pageContext.request.contextPath }/product">Continue Shopping</a>
</div>

<script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
</script>
<script>
    $(function () {
        $("#header").load("header.jsp");
        // $("#footer").load("footer.html");
    });
</script>
<script>src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
integrity = "sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
crossorigin = "anonymous"
</script>


</body>
</html>