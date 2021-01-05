<%--
  Created by IntelliJ IDEA.
  User: doyen
  Date: 2021/1/5
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>lab</title>
</head>
<%@include file="sidebar-css.jsp"%>
<body>
<%@include file="header.jsp" %>
<div class="sidebar">
    <div class="header">实验室</div>
    <div class="list">
        <%--        点击跳转到不同的页面--%>
        <ul>
            <li><a href="lab?id=1">923实验室</a></li>
            <li><a href="lab?id=2">925实验室</a></li>
            <li><a href="lab?id=3">927实验室</a></li>
        </ul>
    </div>
</div>

<div class="content">
    <%--    通过EL表达式获取要显示的值--%>
    <h1>${lab.class_name}</h1>
    <p>简介： ${lab.shortText}</p>
    <p>方向：${lab.direction}</p>
    <p>介绍：${lab.introduction}</p>
</div>
</body>
</html>
