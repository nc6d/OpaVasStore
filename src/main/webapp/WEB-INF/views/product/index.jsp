<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Product Page</title>
</head>

<body>

<jsp:include page="../header.jsp"></jsp:include>

<div class="container d-flex justify-content-center mt-50 mb-50">
    <div class="row">
        <div class="col-md-10">
            <c:forEach var="product" items="${products}">
            <div class="card card-body">

                <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                    <div class="mr-2 mb-3 mb-lg-0"><img src="https://i.imgur.com/5Aqgz7o.jpg" width="150" height="150"
                                                        alt=""></div>
                    <div class="media-body">
                        <h6 class="media-title font-weight-semibold"><a href="#" data-abc="true">${product.name}</a>
                        </h6>
                        <p class="mb-3">${product.description} </p>
                    </div>
                    <div class="mt-3 mt-lg-0 ml-lg-3 text-center">
                        <h3 class="mb-0 font-weight-semibold">$${product.price}</h3>
                        <button type="button" class="btn btn-warning mt-4 text-white"><i class="icon-cart-add mr-2"></i>
                            <a href="${pageContext.request.contextPath }/cart/buy/${product.id}"
                               onclick="return cartAlert()"
                                style="
                                color: white;
                                text-decoration: none;">Buy Now</a>
                        </button>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>


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
    <c:forEach var="product" items="${products}">

    function cartAlert() {
        if (confirm('Item was added to a cart! Go to cart?')) {
            window.open("${pageContext.request.contextPath }/cart/index")
        }
    }

    </c:forEach>

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</html>