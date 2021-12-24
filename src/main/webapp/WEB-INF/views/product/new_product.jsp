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
    <h1>Registration</h1>
    <form action="/new_product" method="post">
        <label>
            <input type="text" name="id" placeholder="Enter name" class="form-control">
        </label><br>
        <label>
            <input type="text" name="surname" placeholder="Enter surname" class="form-control">
        </label><br>
        <label>
            <input type="text" name="birthdate" placeholder="Enter birthdate" class="form-control">
        </label><br>
        <label>
            <input type="text" name="sex" placeholder="Enter sex" class="form-control">
        </label><br>
        <label>
            <input type="text" name="email" placeholder="Enter email" class="form-control">
        </label><br>
        <label>
            <input type="text" name="password" placeholder="Enter password" class="form-control">
        </label><br>
        <button type="submit" class="btn btn-success"> Register</button>
    </form>
</div>
</div>
<div th:insert="blocks/footer :: footer"></div>

</body>
</html>
