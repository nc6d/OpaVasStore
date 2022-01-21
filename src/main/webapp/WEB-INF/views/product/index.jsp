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

    <div class=" mt-5 container-fluid justify-content-center">
        <c:forEach var="product" items="${products}">
        <div class="card card-body">

            <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                    <%--                    <div class="mr-2 mb-3 mb-lg-0"><img src="${product.img}" width="150" height="150"--%>
                    <%--                                                        alt=""></div>--%>
                <div class="media-body">
                    <h2 class="media-title font-weight-semibold"><a data-abc="true">${product.name}</a></h2>
                    <p class="mb-3">${product.description} </p>
                </div>
                <div class="mt-3 mt-lg-0 ml-lg-3 text-center">
                    <h3 class="mb-3 font-weight-semibold">$${product.price}</h3>
                    <div style="display: inline-block">
                        <a href="${pageContext.request.contextPath }/cart/buy/${product.id}"
                           role="button"
                           class="btn btn-outline-dark mb-4 btn-block"
                        >Buy Now</a>
                        <a href="${pageContext.request.contextPath }/product/delete/${product.id}"
                           onclick="return alert('${product.name} was succesfully deleted from a products list')"
                           role="button"
                           class="btn btn-outline-dark mb-4 btn-block"
                        >Delete</a>
                        <a href="${pageContext.request.contextPath }/product/editing/${product.id}"
                           role="button"
                           class="btn btn-outline-dark mb-4 btn-block"
                        >Edit</a>

                    </div>

                </div>
            </div>

        </div>
        </c:forEach>
    </div>


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