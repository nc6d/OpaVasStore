<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Cart Page</title>
</head>
<body onload="showModal()">

<jsp:include page="../../header.jsp"></jsp:include>


<div class="px-4 px-lg-0 mt-5">
  <div class="container text-black py-5 text-center">
    <h1 class="display-4 mb-3">My Cart</h1>
    <a href="${pageContext.request.contextPath }/product" class="btn btn-lg btn-dark rounded-pill py-2 btn-block">Continue
      shopping</a>
  </div>
  <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <div class="table-responsive">
            <table class="table">
              <thead>
              <tr>
                <th scope="col" class="border-0 bg-light">
                  <div class="p-2 px-3 text-uppercase">Product</div>
                </th>
                <th scope="col" class="border-0 bg-light">
                  <div class="py-2 text-uppercase text-center">Price</div>
                </th>
                <th scope="col" class="border-0 bg-light">
                  <div class="py-2 text-uppercase text-center">Quantity</div>
                </th>
                <th scope="col" class="border-0 bg-light">
                  <div class="py-2 mx-2 text-uppercase align-middle ">Remove</div>
                </th>
              </tr>
              </thead>
              <c:set var="total" value="0"></c:set>
              <c:forEach var="item" items="${sessionScope.cart }">
                <c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
                <tbody style="font-size: large">
                <tr>
                  <th scope="row" class="border-0">
                    <div class="pt-3 m-3">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0 pb-3"><a href="#"
                                                 class="text-dark d-inline-block align-middle">${item.product.name}</a>
                        </h5>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle text-center"><strong>$${item.product.price}</strong></td>
                  <td class="border-0 align-middle">
                    <div class="text-center">
                      <a
                              class=" <c:if test="${item.quantity == 1}"><c:out value="btn disabled"/></c:if> btn btn-lg mb-1 py-3 "
                              href="${pageContext.request.contextPath }/cart/decrease/${item.product.id }"
                      >-
                      </a>
                      <strong>${item.quantity}</strong>
                      <a
                              href="${pageContext.request.contextPath }/cart/increase/${item.product.id }"
                              class="btn btn-lg mb-1 py-3 ">+
                      </a>
                    </div>


                  </td>
                  <td class="border-0 align-middle">
                    <a
                            href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
                            class="btn btn-dark rounded-pill py-2 btn-block"
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
            <h3 class="font-weight-bold">$${total}</h3>
          </ul>
          <div>
            <a href="#" class="btn btn-dark btn-block rounded-pill py-2 btn-block w-50 mb-3">Proceed to
              checkout</a>
            <a href="${pageContext.request.contextPath }/cart/remove_confirmation"
            <%--               onclick="return confirm('Are you sure?')"--%>
               class="btn btn-dark btn-block rounded-pill py-2 btn-block w-50 mb-3">Clear my cart</a>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
<!-- Modal -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Removing product</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure?
      </div>

      <div class="modal-footer">
        <a type="button" class="btn btn-outline-secondary btn-block"  data-bs-dismiss="modal" aria-label="Close">Back</a>
        <a type="button" class="btn btn-dark btn-block" href="${pageContext.request.contextPath }/cart/remove">Remove</a>
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

<%--BS scripts--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous">
</script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
</html>
