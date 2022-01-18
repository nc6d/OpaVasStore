<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 18.01.2022
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div class="p-5 mt-5 text-center">
  <form action="${pageContext.request.contextPath}/product/edit" method="post">
    <div class="row mb-4">
      <div class="col">
        <div class="form-outline">
          <input type="text" readonly placeholder="ID" name="id" id="form6Example1" value="${product.id}" class="form-control"/>
          <label class="form-label" for="form6Example1"></label>
        </div>
      </div>
      <div class="col">
        <div class="form-outline">
          <input type="text" placeholder="Name" name="name" id="form6Example2" value="${product.name}" class="form-control"/>
          <label class="form-label" for="form6Example2"></label>
        </div>
      </div>
    </div>

    <div class="form-outline mb-4">
      <textarea class="form-control" placeholder="Description" name="description" id="form6Example7" rows="4">${product.description}</textarea>
      <label class="form-label" for="form6Example7"></label>
    </div>
    <!-- Number input -->
    <div class="form-outline mb-4">
      <input type="number" placeholder="Price" name="price" id="form6Example6" value="${product.price}" class="form-control"/>
      <label class="form-label" for="form6Example6"></label>
    </div>

    <!-- Message input -->
    <div>
      <button type="submit" class="btn btn-outline-dark mb-4 btn-block">Edit product</button>
    </div>
  </form>
</div>
</body>
</html>
