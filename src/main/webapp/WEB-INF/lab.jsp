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
<body>
<%@include file="header.jsp" %>
<div class="sidebar">
    <div class="header"></div>
    <div class="list">
        <%--        点击跳转到不同的页面--%>
        <ul>
            <li><a href="">教授</a></li>
            <li><a href="">副教授</a></li>
            <li><a href="">讲师</a></li>
        </ul>
    </div>
</div>

<div class="content">
    <%--    通过EL表达式获取要显示的值--%>
    <p></p>
</div>
</body>
</html>
