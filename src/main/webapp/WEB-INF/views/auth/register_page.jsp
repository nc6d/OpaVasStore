<%--
  Created by IntelliJ IDEA.
  User: nc_6d
  Date: 24/01/2022
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>


<div class="p-5 mt-5 text-center">
  <form action="${pageContext.request.contextPath}/auth/register" method="post">
    <div class="row mb-4">
      <div class="col">
        <div class="form-outline">
          <input type="text" placeholder="Username" name="username" id="form6Example2" class="form-control"/>
          <label class="form-label" for="form6Example2"></label>
        </div>
      </div>
    </div>

    <div class="form-outline mb-4">
      <input class="form-control" placeholder="Email" name="email" id="form6Example7">
      <label class="form-label" for="form6Example7"></label>
    </div>
    <div class="form-outline mb-4">
      <input type="password" placeholder="Password" name="password" id="form6Example6" class="form-control"/>
      <label class="form-label" for="form6Example6"></label>
    </div>

    <div>
      <button type="submit" class="btn btn-outline-dark mb-4 btn-block">Register</button>
    </div>
  </form>
</div>
</body>
</html>
