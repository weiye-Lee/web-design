<%--
  Created by IntelliJ IDEA.
  User: doyen
  Date: 2021/1/5
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            background: url("/resource/img/bg.png");
        }

        .home {
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

        .nav-bottom {
            text-align: center;
            list-style: none;
            outline: none;
        }

        .nav-bottom a {
            text-decoration: none;
            color: white;
            display: block;
            font-size: 1.2em;
            width: 100px;
        }

        .nav-bottom li {
            margin: 5px 40px;
            list-style: none;
            display: inline-block;
        }
        .body-title p {
            position: absolute;
            bottom: 200px;
            left: 40%;
            margin-bottom: 100px;
            display: inline-block;
            width: fit-content;
            font-size: 5em;
            color: white;
            border-width: 4px;

        }
        .float {
            position: relative;
        }
        .float ul{
            display: none;
            top:50px;
            list-style: none;
            z-index: 9999;
            position: absolute;
            width:165px;
            background-color:#31402a;
            /*border-radius: 5px;*/
        }
        .float ul li a{
            display: block;
        }
        .float ul li a:hover{
            background-color: darkgray;
        }

        .nav-bottom .nav-bottom-item:hover {
            border-bottom: 1px solid white;
        }

        .nav-top .nav-top-item:hover {
            background: grey;
        }
    </style>
</head>
<body>

<div class="home">
    <div class="nav">
        <div class="nav-header">
            <div class="logo">
                <p>东北林业大学</p>
                <i class="material-icons">school</i>
            </div>
            <div class="nav-top">
                <ul>
                    <li class="nav-top-item"><a href="#">数字东林</a></li>
                    <li class="nav-top-item"><a href="#">电子邮件</a></li>
                    <li class="nav-top-item"><a href="#">校园电话</a></li>
                </ul>
            </div>
        </div>
        <div class="nav-bottom">
            <ul>
                <li id="home" class="nav-bottom-item"><a href="">首页</a></li>
                <li id="about" class="nav-bottom-item"><a href="">关于我们</a></li>
                <li id="teachers" class="nav-bottom-item float"><a href="">教师队伍</a>
                    <ul>
                        <li><a href="api/info/teacher?level=1">教授</a></li>
                        <li><a href="api/info/teacher?level=2">副教授</a></li>
                        <li><a href="api/info/teacher?level=3">讲师</a></li>
                    </ul>
                </li>
                <li id="lab" class="nav-bottom-item float"><a href="">实验室</a>
                    <ul>
                        <li><a href="api/info/lab?id=1"  target="_blank">923实验室</a></li>
                        <li><a href="api/info/lab?id=2"  target="_blank">925实验室</a></li>
                        <li><a href="api/info/lab?id=3" target="_blank">927实验室</a></li>
                    </ul>
                </li>
                <li id="news" class="nav-bottom-item"><a href="">最新动态</a></li>
            </ul>
        </div>

    </div>


</div>
</body>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
    onload = function () {
        var arr = document.getElementsByClassName("slide");
        for (var i = 0; i < arr.length; i++) {
            arr[i].style.left = i * 100 + "vw";
        }
    }

    function LeftMove() {
        var arr = document.getElementsByClassName("slide");//获取三个子div
        for (var i = 0; i < arr.length; i++) {
            var left = parseFloat(arr[i].style.left);
            left -= 2;
            var width = 100;//图片的宽度
            if (left <= -width) {
                left = (arr.length - 1) * width;//当图片完全走出显示框，拼接到末尾
                clearInterval(moveId);
            }
            arr[i].style.left = left + "vw";
        }
    }

    function divInterval() {
        moveId = setInterval(LeftMove, 10);//设置一个10毫秒定时器
    }


    timeId = setInterval(divInterval, 2000);//设置一个3秒的定时器。

    function stop() {
        clearInterval(timeId);
    }

    function start() {
        clearInterval(timeId);
        timeId = setInterval(divInterval, 2000);
    }

    //页面失去焦点停止
    onblur = function () {
        stop();
    }
    //页面获取焦点时开始
    onfocus = function () {
        start();
    }
</script>
<script>
    $(function () {
        $(".float").hover(function () {
            $(this).children("ul").fadeIn();
        }, function () {
            $(this).children("ul").fadeOut();
        })
    })
</script>
<script>
    // 获取模型
    var modal = document.getElementById('id01');

    // 鼠标点击模型外区域关闭登录框
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</html>
