<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: nc_6d
  Date: 24/12/2021
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New product</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<div class="p-5 mt-5 text-center">
    <form action="${pageContext.request.contextPath}/product/create" method="post">
<div class="row mb-4">
    <div class="col">
        <div class="form-outline">
            <input type="text" placeholder="ID" name="id" id="form6Example1" class="form-control"/>
            <label class="form-label" for="form6Example1"></label>
        </div>
    </div>
    <div class="col">
        <div class="form-outline">
            <input type="text" placeholder="Name" name="name" id="form6Example2" class="form-control"/>
            <label class="form-label" for="form6Example2"></label>
        </div>
    </div>
</div>

<div class="form-outline mb-4">
    <textarea class="form-control" placeholder="Description" name="description" id="form6Example7" rows="4"></textarea>
    <label class="form-label" for="form6Example7"></label>
</div>
<!-- Number input -->
<div class="form-outline mb-4">
    <input type="number" placeholder="Price" name="price" id="form6Example6" class="form-control"/>
    <label class="form-label" for="form6Example6"></label>
</div>

<!-- Message input -->
<div>
    <button type="submit" class="btn btn-outline-dark mb-4 btn-block">Add product</button>
</div>
</form>
<!-- 2 column grid layout with text inputs for the first and last names -->


<!-- Submit button -->

<%--        <a class="btn btn-outline-light btn-lg" href="${pageContext.request.contextPath }/product"--%>
<%--           role="button">Go Shopping</a>--%>
<%--    </form>--%>
<%--    <form action="${pageContext.request.contextPath}/product/create" method="post">--%>
<%--        <label>--%>
<%--            <input type="text" name="id" placeholder="Enter id" class="form-control">--%>
<%--        </label><br>--%>
<%--        <label>--%>
<%--            <input type="text" name="name" placeholder="Enter name" class="form-control">--%>
<%--        </label><br>--%>
<%--        <label>--%>
<%--            <input type="text" name="description" placeholder="Enter description" class="form-control">--%>
<%--        </label><br>--%>
<%--        <label>--%>
<%--            <input type="text" name="price" placeholder="Enter price" class="form-control">--%>
<%--        </label><br>--%>
<%--        <button type="submit" class="btn btn-success">Submit</button>--%>
<%--    </form>--%>


</body>
</html>
