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
            background: url("resource/img/bg2.jpg");
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
            background: darkgrey;
        }
        .news >p {
            margin: auto;
            font-size: 1.2em;
        }
        .news li{
            text-decoration: none;
            list-style: none;
        }
        /*-----------------模拟布局--------------------------*/
        .row{
            display:flex;
            flex-warp:warp;/*超出项自动换行，从而自动的实现响应式布局*/
            align-content: flex-start;/*行中元素居上对齐纵向不拉伸*/
        }
        .col-md-1{width:8.33333333%;}
        .col-md-2{width:16.6666667%;}
        .col-md-3{width:25%;}
        .col-md-4{width:33.33333333%;}
        .col-md-5{width:41.66666667%;}
        .col-md-6{width:50%;}
        .col-md-7{width:58.33333333%;}
        .col-md-8{width:66.6666667%;}
        .col-md-9{width:75%;}
        .col-md-10{width:83.33333333%;}
        .col-md-11{width:91.66666667%;}
        .col-md-12{width:100%;}
        /*--------------------轮播图----------------------*/
        #box{
            width:100vw;
            height:500px;
            position:relative;
            overflow:hidden;
        }
        #box img{
            width: 100%;
            height: 100%;
        }

        .slide{
            width:100vw;
            height:100%;
            position:absolute;
        }

    </style>
</head>
<body>
<div class="main">
    <%@include file="header.jsp"%>
    <div class="img">
        <img src="resource/img/home-img.png" alt="default">
    </div>
    <div class="news">
        <h1>新闻链接</h1>
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

</body>
</html>