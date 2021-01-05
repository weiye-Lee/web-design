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
            background-image: url("resource/img/bg.png");
            background-size: cover;
        }

        .home {
            /*background: black;*/
            /*position: fixed;*/
            /*top: 0;*/
            /*left: 0;*/
            /*width: 100vw;*/
            height: 100vh;
            z-index: 3;
        }

        .nav-header {
            display: flex;
            flex-direction: row;
            color: white;
        }

        .nav-header .logo {
            font-size: 1.5em;
            flex-grow: 10;
        }

        .nav-header .logo p {
            width: available;
            display: inline-block;
            /*font-family: SimSun, serif;*/
        }

        .nav-top li {
            display: inline-block;
            outline: none;
            list-style: none;
            margin: 10px;

        }

        .nav-top a {
            margin: 5px;
            font-size: 1.5em;
            text-decoration: none;
            outline: none;
            color: white;
        }

        .nav-bottom {
            text-align: center;
            list-style: none;
            outline: none;
        }

        .nav-bottom a {
            text-decoration: none;
            color: white;
            display: block;
            font-size: 1.2em;
            width: 100px;
        }

        .nav-bottom li {
            margin: 5px 40px;
            list-style: none;
            display: inline-block;
        }

        .body-title {
            height: available;
            /*border: 1px solid pink;*/
            text-align: center;
        }

        .body-title p {
            position: absolute;
            bottom: 200px;
            left: 40%;
            margin-bottom: 100px;
            display: inline-block;
            width: fit-content;
            font-size: 5em;
            color: white;
            border-width: 4px;

        }

        .more {
            width: 100%;
            position: absolute;
            bottom: 0;
            height: 30px;
            background: red;
            text-align: center;
            padding: 5px;
        }

        .more p {
            display: inline-block;
            font-size: 1.2em;
            color: white;
        }

        .more-i {
            font-size: 1.2em;
            margin: auto;
            color: white;
        }

        .news {
            background: rgb(250, 246, 239);
            /*position: absolute;*/
            z-index: 10;
        }

        .card-row {
            margin: 40px auto;
            display: flex;
        }

        .big-card {
            height: 350px;
            margin: auto;
            border: 1px solid black;
        }

        .small-card {
            height: 350px;
            margin: auto;
            border: 1px solid black;

        }

        .big-card img {
            width: 640px;
            height: 350px;
        }

        .small-card img {
            width: 300px;
            height: 200px;
        }

        .news .header {
            margin-bottom: 20px;
            text-align: center;
        }

        .news .header p {
            font-size: 3em;
        }

        .small-card .title {
            font-size: 1.3em;
            margin: 5px;
        }

        .small-card .content {
            margin: 5px;
        }

        .big-card .title {
            position: relative;
            top: -60px;
            left: 10px;
            font-size: 2em;

        }

        .big-card .content {
            display: none;
        }

        .nav-bottom .nav-bottom-item:hover {
            border-bottom: 1px solid white;
        }

        .nav-top .nav-top-item:hover {
            background: grey;
        }

        .nav-teachers-item {
            background: black;
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
<div class="main">
    <%@include file="header.jsp"%>

    <div class="content">
        <div class="body-title">
            <p>software</p>
        </div>
        <div class="more">
            <p>more</p>
            <i class="material-icons more-i">expand_more</i>
        </div>
    </div>
    <div class="news">

        <div class="header">
            <p>Today news</p>
        </div>
        <div class="cards">
            <div class="card-row">
                <c:forEach items="${newsList}" var="v" varStatus="s" begin="0" end="2">
                    <c:set var="type" value="small-card"/>
                    <c:if test="${s.index == 0}">
                        <c:set var="type" value="big-card"/>
                    </c:if>

                    <div class="${type}">
                        <img src="resource/img/card-default.png" alt="default">
                        <p class="title">${v.title}</p>
                        <p class="content">${v.content}</p>
                    </div>
                </c:forEach>
            </div>
            <div class="card-row">
                <c:forEach items="${newsList}" var="v" varStatus="s" begin="3" end="5">
                    <c:set var="type" value="small-card"/>
                    <c:if test="${s.index == 5}">
                        <c:set var="type" value="big-card"/>
                    </c:if>

                    <div class="${type}">
                        <img src="resource/img/card-default.png" alt="default">
                        <p class="title">${v.title}</p>
                        <p class="content">${v.content}</p>
                    </div>
                </c:forEach>
            </div>

        </div>
        <div>
            <a href="">更多</a>
        </div>
    </div>
</div>

</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function () {
        $(".big-card").click(function () {
            let url = ${base} +"api/news/info"
            window.location.href = url
        })
    })
</script>
</body>
</html>