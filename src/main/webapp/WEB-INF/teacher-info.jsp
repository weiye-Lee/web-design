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

        /* --------------全局table属性-------------------- */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            text-align: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        tbody tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        /* --------------全局超链接按钮------------------ */
        a.btn {
            background-color: #f44336;
            color: white;
            padding: 10px 25px;
            text-decoration: none;
            display: inline-block;
            border-radius: 8px;
        }

        a.btn:hover {
            background-color: red;
        }
    </style>
</head>
<%@include file="sidebar-css.jsp" %>
<body>
<%@include file="header.jsp" %>
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
        <c:forEach items="${list}" var="u">
            <tr>

                <td>${u.name}</td>
                    <%--        <p>职称：${u.level}</p>--%>
                <c:set var="sex" value="男"/>
                <c:if test="${u.sex} == 0">
                    <c:set var="sex" value="女"/>
                </c:if>
                <td>性别：${sex}</td>
                <td>
                    <a class="btn" href="info?id=${u.id}">详情</a>
                </td>
            </tr>

        </c:forEach>
    </table>


</div>
</body>
</html>
