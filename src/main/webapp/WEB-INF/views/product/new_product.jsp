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
<div class="container mt-50 mb-5">
    <form action="${pageContext.request.contextPath}/product/create" method="post">
        <label>
            <input type="text" name="id" placeholder="Enter id" class="form-control">
        </label><br>
        <label>
            <input type="text" name="name" placeholder="Enter name" class="form-control">
        </label><br>
        <label>
            <input type="text" name="description" placeholder="Enter description" class="form-control">
        </label><br>
        <label>
            <input type="text" name="price" placeholder="Enter price" class="form-control">
        </label><br>
        <button type="submit" class="btn btn-success">Submit</button>
    </form>
</div>

<div><a href="${pageContext.request.contextPath }/product">Product List</a></div>

</body>
</html>
