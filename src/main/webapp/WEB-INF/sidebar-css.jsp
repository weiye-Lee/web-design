<%--
  Created by IntelliJ IDEA.
  User: doyen
  Date: 2021/1/6
  Time: 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body{
        height: 100vh;
        background: url("/resource/img/bg.png");
    }
    .sidebar {
        position: relative;
        top: -400px;
        width: 150px;
    }
    .sidebar li{
        background: grey;
        padding: 10px;
    }
    .sidebar .list a {
        display: flex;
        flex-direction: column;
        text-align: center;
        text-decoration: none;
        color: white;

    }
    .sidebar .header {
        padding: 10px;
        text-align: center;
        font-size: 1.5em;
        background: blueviolet;
    }

    .content{
        padding: 10px;
        z-index: 5;
        width: 80vw;
        border: 1px solid pink;
        height: 80vh;
        position: relative;
        top: -600px;
        left: 200px;
        color: white;
    }

    .sidebar .list li:hover{
        background: blueviolet;
    }

</style>
