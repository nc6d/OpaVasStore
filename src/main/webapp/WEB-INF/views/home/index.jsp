<%--
  Created by IntelliJ IDEA.
  User: nc_6d
  Date: 29/12/2021
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OpaVasStore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<header>
    <jsp:include page="../header.jsp"></jsp:include>

    <!-- Jumbotron -->
    <div class="p-5 text-center bg-image"
         style="
          background-image: url('https://eskipaper.com/images/gradient-wallpapers-1.jpg') ;
          background-repeat: no-repeat;
          background-size: cover;
          background-position: center;
          height: 100vh;">

        <div class="mask" style="background-color: rgba(0, 0, 0, 0.4);">
            <div class="d-flex justify-content-center align-items-center h-100">
                <div class="text-white">
                    <h1 class="mb-3">OpaVasStore</h1>
                    <a class="btn btn-outline-light btn-lg" href="${pageContext.request.contextPath }/product"
                       role="button">Go Shopping</a>
                </div>
            </div>

        </div>
    </div>

</header>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</html>
