<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: doyen
  Date: 2021/1/6
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="content">
    <table>
        <tr>
            <th>姓名</th>
            <th>性别</th>
            <th>手机号</th>
            <th>email</th>
            <th>简介</th>
        </tr>
        <tr>
            <th>${teacher.name}</th>
            <c:set var="sex" value="男"/>
            <c:if test="${teacher.sex} == 0" >
                <c:set var="sex" value="女"/>
            </c:if>
            <th>${sex}</th>
            <th>${teacher.phone}</th>
            <th>${teacher.email}</th>
            <th>${teacher.introduction}</th>
        </tr>
    </table>
</div>
</body>
</html>
