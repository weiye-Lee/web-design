<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: doyen
  Date: 2021/1/5
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <title>teacher-info</title>
    <style>
        .content th + tr{
            border: 1px solid blueviolet;
        }
    </style>
</head>
<%@include file="sidebar-css.jsp"%>
<body>
<%@include file="header.jsp"%>
<div class="sidebar">
    <div class="header">讲师团队</div>
    <div class="list">
        <%--        点击跳转到不同的页面--%>
        <ul>
            <li><a href="teacherInfo?level=1">教授</a></li>
            <li><a href="teacherInfo?level=2">副教授</a></li>
            <li><a href="teacherInfo?level=3">讲师</a></li>
        </ul>
    </div>
</div>
<div class="content">
    <table>
        <tr>
            <th>姓名</th>
            <th>性别</th>
            <th>详情</th>
        </tr>

    </table>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.name}</td>
            <td>${u.sex}</td>
            <td><a href="info?id=${u.id}">详情</a></td>
        </tr>
    </c:forEach>
</div>
</body>
</html>
