<%--
  Created by IntelliJ IDEA.
  User: doyen
  Date: 2021/1/3
  Time: 0:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .main{
            height: 100vh;
            background: grey;
        }
        .login-ctn{
            position: absolute;
            top: 50%;
            left: 40%;
            height: 100px;
            background: white;
        }


    </style>
</head>
<body>
<div class="main">
    <div class="login-ctn">
        <form action="/api/login" method="post">
            <label for="account"><i class="material-icons">lock_outline</i></label>
            <input type="text" id="account" name="account">
            <br>
            <label for="password"><i class="material-icons">vpn_key</i></label>
            <input type="password" id="password" name="password">
            <br>
            <input type="submit" value="login">
        </form>
    </div>
</div>
</body>
</html>
