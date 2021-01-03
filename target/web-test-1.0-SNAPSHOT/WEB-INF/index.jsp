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
        .home{
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
        .nav-bottom{
            text-align: center;
            list-style: none;
            outline: none;
        }
        .nav-bottom a{
            text-decoration: none;
            color: white;
            display: block;
            font-size: 1.2em;
            width: 100px;
        }
        .nav-bottom li{
            margin: 5px 40px;
            list-style: none;
            display: inline-block;
        }
        .body-title{
            height: available;
            /*border: 1px solid pink;*/
            text-align: center;
        }
        .body-title p{
            margin-top: 200px;
            display: inline-block;
            width: fit-content;
            font-size: 5em;
            color: white;
            border-width: 4px;

        }
        .more{
            width: 100%;
            position: absolute;
            bottom: 0;
            height: 30px;
            background: red;
            text-align: center;
            padding: 5px;
        }
        .more p{
            display: inline-block;
            font-size: 1.2em;
            color: white;
        }
        .more-i{
            font-size: 1.2em;
            margin: auto;
            color: white;
        }
        .news{
            background: rgb(250, 246, 239);
            /*position: absolute;*/
            z-index: 10;
        }

        .card-row{
            margin: 40px auto;
            display: flex;
        }
        .big-card {
            height: 350px;
            margin: auto;
            border: 1px solid black;
        }
        .small-card{
            height: 350px;
            margin: auto;
            border: 1px solid black;

        }
        .big-card img{
            width: 640px;
            height: 350px;
        }

        .small-card img{
            width: 300px;
            height: 200px;
        }
        .news .header{
            margin-bottom: 20px;
            text-align: center;
        }
        .news .header p{
            font-size: 3em;
        }
    </style>
</head>
<body>
<div class="main">

    <div class="home">
        <div class="nav">
            <div class="nav-header">
                <div class="logo">
                    <p>东北林业大学</p>
                    <i class="material-icons">school</i>
                </div>
                <div class="nav-top">
                    <ul>
                        <li><a href="#">数字东林</a></li>
                        <li><a href="#">电子邮件</a></li>
                        <li><a href="#">校园电话</a></li>
                    </ul>
                </div>
            </div>
            <div class="nav-bottom">
                <ul>
                    <li><a href="">首页</a></li>
                    <li><a href="">关于我们</a></li>
                    <li><a href="">教师队伍</a></li>
                    <li><a href="">实验室</a></li>
                    <li><a href="">最新动态</a></li>
                </ul>
            </div>

        </div>

        <div class="content">
            <div class="body-title">
                <p>software</p>
            </div>
            <div class="more">
                <p>more</p>
                <i class="material-icons more-i">expand_more</i>
            </div>
        </div>

    </div>

    <div class="news">

        <div class="header">
            <p>Today news</p>
        </div>
        <div class="cards">
            <div class="card-row">
<%--                <c:forEach items="${newsList}" var="n" varStatus="s">--%>
<%--                    ${n.title}--%>
<%--                </c:forEach>--%>
                <div class="big-card">
                    <img src="resource/img/card-default.png" alt="default">
                </div>
                <div class="small-card">
                    <img src="resource/img/card-default.png" alt="default">

                </div>
                <div class="small-card"><img src="resource/img/card-default.png" alt="default">
                </div>
            </div>
            <div class="card-row">
                <div class="small-card"><img src="resource/img/card-default.png" alt="default">
                </div>
                <div class="small-card"><img src="resource/img/card-default.png" alt="default">
                </div>
                <div class="big-card">
                    <img src="resource/img/card-default.png" alt="default">

                </div>
            </div>
        </div>
        <div>
            <a href="">更多</a>
        </div>
    </div>

</div>
</body>
</html>