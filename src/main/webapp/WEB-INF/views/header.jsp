<%--
  Created by IntelliJ IDEA.
  User: nc_6d
  Date: 04/01/2022
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
  <title>OpaVasStore</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<header>
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <button
              class="navbar-toggler"
              type="button"
              data-mdb-toggle="collapse"
              data-mdb-target="#navbarExample01"
              aria-controls="navbarExample01"
              aria-expanded="false"
              aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath }/">Home</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath }/product">Products</a>
          </li>
          <sec:authorize access="isAuthenticated()">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath }/cart/index">My Cart</a>
          </li>
          </sec:authorize>

            <li class="nav-item">
              <sec:authorize access="hasAuthority('ADMIN')">
            <a class="nav-link" href="${pageContext.request.contextPath }/product/new_product">New
              Product</a>
              </sec:authorize>
          </li>

          <sec:authorize access="isAnonymous()">
          <li class="navbar-nav mr-auto">
            <a class="nav-link" href="${pageContext.request.contextPath}auth/login">Login</a>
          </li>
          </sec:authorize>
          <sec:authorize access="isAnonymous()">
            <li class="navbar-nav mr-auto">
              <a class="nav-link" href="${pageContext.request.contextPath}auth/register_page">Register</a>
            </li>
          </sec:authorize>
          <sec:authorize access="isAuthenticated()">
          <li class="navbar-nav mr-auto">
            <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
          </li>
          </sec:authorize>
        </ul>
      </div>
    </div>
  </nav>
</header>