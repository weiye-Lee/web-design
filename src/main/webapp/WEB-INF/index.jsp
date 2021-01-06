<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <title>JSP - Hello World</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .main {
            height: 100vh;
            background: darkgreen;
        }
        .img {
            position: relative;
            top: -500px;
            text-align: center;
        }
        .img img{
            width: 800px;
            height: 200px;
            margin: auto;

        }
        .news {
            text-align: center;
            position: relative;
            top: -400px;
            width: 800px;
            border: 1px solid black;
            left: 280px;
            padding: 10px;
        }
        .news >p {
            margin: auto;
            font-size: 1.2em;
        }
        .news li{
            text-decoration: none;
            list-style: none;
        }

    </style>
</head>
<body>
<div class="main">
    <%@include file="header.jsp"%>
    <div class="img">
        <img src="resource/img/home-img.png" alt="home_png">
    </div>
    <div class="news">
        <p>新闻</p>
        <ul>
            <c:forEach items="${newsList}" var="u">
                <li>
                    <a href="newsInfo?id=${u.id}">${u.title}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>

</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function () {
        // none
    })
</script>
</body>
</html>