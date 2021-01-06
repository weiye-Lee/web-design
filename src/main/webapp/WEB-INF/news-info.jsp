<%--
  Created by IntelliJ IDEA.
  User: doyen
  Date: 2021/1/5
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>newsInfo</title>
    <style>
        body{
            background: darkgreen;
        }
        .content{
            width: 600px;
            margin: auto;
            background: darkgray;
            padding: 10px;
            height: 50vh;
            position: relative;
            top: -500px;
        }
        .content #time{
            text-align: right;
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="content">
    <%--    通过EL表达式获取要显示的值--%>
    <h1>news</h1>
    <h1>${newsInfo.title}</h1>
    <p>${newsInfo.content}</p>
    <p id="time">2020/1/6 11:21</p>
</div>
</body>
</html>
