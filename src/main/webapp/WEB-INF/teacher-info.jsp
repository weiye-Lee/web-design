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
        /*.content th {*/
        /*    display: inline-block;*/
        /*    padding: 5px;*/
        /*    width: 50px;*/
        /*    border: 1px solid blueviolet;*/
        /*}*/

        .content tr{
            display: block;
            width: 50px;
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
    <c:forEach items="${list}" var="u">
        <h1>${u.name}</h1>
<%--        <p>职称：${u.level}</p>--%>
        <c:set var="sex" value="男"/>
        <c:if test="${u.sex} == 0" >
            <c:set var="sex" value="女"/>
        </c:if>
        <p>性别：${sex}</p>
        <a href="info?id=${u.id}">详情</a>
    </c:forEach>
</div>
</body>
</html>
