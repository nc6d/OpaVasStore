<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Product Page</title>
</head>

<body onload="showModal()">

<jsp:include page="../../header.jsp"></jsp:include>

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
               onclick="return alert('${product.name} was successfully deleted from a products list')"
               role="button"
               class="btn btn-outline-dark mb-4 btn-block"
            >Delete</a>
            <a href="#"
               role="button"
               class="btn btn-outline-dark mb-4 btn-block"
            >Edit</a>

          </div>

        </div>
      </div>

    </div>
  </c:forEach>
</div>

<!-- Modal -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">OpaVasStore</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Your lap is in your cart!
      </div>

      <div class="modal-footer">
        <a type="button" class="btn btn-outline-secondary btn-block" href="${pageContext.request.contextPath }/product">Stay
          here</a>
        <a type="button" class="btn btn-dark btn-block" href="${pageContext.request.contextPath }/cart/index">Go to
          cart</a>
      </div>

    </div>
  </div>
</div>


</body>

<script>
    function showModal() {
        $(document).ready(function () {
            $('#exampleModal').modal("show")
        });

    }
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous">
</script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
</html>