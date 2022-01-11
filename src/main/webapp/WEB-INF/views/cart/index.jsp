<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Cart Page</title>
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>


<div class="px-4 px-lg-0">
    <!-- For demo purpose -->
    <div class="container text-black py-5 text-center">
        <h1 class="display-4">Shopping cart</h1>
    </div>
    <!-- End -->

    <div class="pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                    <!-- Shopping cart table -->
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="p-2 px-3 text-uppercase">Product</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Price</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Quantity</div>
                                </th>
                                <th scope="col" class="border-0 bg-light">
                                    <div class="py-2 text-uppercase">Remove</div>
                                </th>
                            </tr>
                            </thead>
                            <c:set var="total" value="0"></c:set>
                            <c:forEach var="item" items="${sessionScope.cart }">
                            <c:set var="total"
                                   value="${total + item.product.price * item.quantity }"></c:set>
                            <tbody>
                            <tr>
                                <th scope="row" class="border-0">
                                    <div class="p-2">
                                        <div class="ml-3 d-inline-block align-middle">
                                            <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">${item.product.name}</a></h5>
                                        </div>
                                    </div>
                                </th>
                                <td class="border-0 align-middle"><strong>${item.product.price}</strong></td>
                                <td class="border-0 align-middle"><strong>${item.quantity}</strong></td>
                                <td class="border-0 align-middle">
                                    <a
                                        href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
                                        onclick="return confirm('Are you sure?')">Remove
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                            </c:forEach>
                        </table>
                    </div>
                    <!-- End -->
                </div>
            </div>

                <div class="text-center">
                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Total price</div>
                    <div class="p-4">
                        <ul class="list-unstyled mb-4">
                            <h5 class="font-weight-bold">${total}</h5>
                        </ul><a href="#" class="btn btn-dark rounded-pill py-2 btn-block">Proceed to checkout</a>
                    </div>
                </div>

        </div>
    </div>
</div>



</body>
</html>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
<%--    <title>Cart Page</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--    <jsp:include page="../header.jsp"></jsp:include>--%>

<%--<table cellpadding="2" cellspacing="2" border="1">--%>
<%--    <tr>--%>
<%--        <th>Option</th>--%>
<%--        &lt;%&ndash;        <th>Id</th>&ndash;%&gt;--%>
<%--        <th>Name</th>--%>
<%--        <th>Price</th>--%>
<%--        <th>Quantity</th>--%>
<%--        <th>Sub Total</th>--%>
<%--    </tr>--%>
<%--    <c:set var="total" value="0"></c:set>--%>
<%--    <c:forEach var="item" items="${sessionScope.cart }">--%>
<%--        <c:set var="total"--%>
<%--               value="${total + item.product.price * item.quantity }"></c:set>--%>
<%--        <tr>--%>
<%--            <td align="center"><a--%>
<%--                    href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"--%>
<%--                    onclick="return confirm('Are you sure?')">Remove</a></td>--%>
<%--                            <td>${item.product.id }</td>--%>
<%--            <td>${item.product.name }</td>--%>
<%--            <td>${item.product.price }</td>--%>
<%--            <td>${item.quantity }</td>--%>
<%--            <td>${item.product.price * item.quantity }</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    <tr>--%>
<%--        <td colspan="4" align="right">Sum</td>--%>
<%--        <td>${total}</td>--%>
<%--    </tr>--%>
<%--</table>--%>
<%--<br>--%>

<%--<div>--%>
<%--    <a href="${pageContext.request.contextPath }/cart/remove"--%>
<%--       onclick="return confirm('Are you sure?')">Remove All</a>--%>
<%--</div>--%>
<%--<div>--%>
<%--    <a href="${pageContext.request.contextPath }/product">Continue Shopping</a>--%>
<%--</div>--%>

<%--<script--%>
<%--        src="https://code.jquery.com/jquery-3.3.1.js"--%>
<%--        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="--%>
<%--        crossorigin="anonymous">--%>
<%--</script>--%>
<%--<script>--%>
<%--    $(function () {--%>
<%--        $("#header").load("header.jsp");--%>
<%--        // $("#footer").load("footer.html");--%>
<%--    });--%>
<%--</script>--%>
<%--<script>src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"--%>
<%--integrity = "sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"--%>
<%--crossorigin = "anonymous"--%>
<%--</script>--%>


<%--</body>--%>
<%--</html>--%>