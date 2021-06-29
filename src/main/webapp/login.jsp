<%--
  Created by IntelliJ IDEA.
  User: yaoqian
  Date: 2021/6/26
  Time: 4:52 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to the Dota World</title>
    <link rel="stylesheet" href="statics/css/common.css">
    <link rel="stylesheet" href="statics/css/login.css">
    <script src="statics/js/jquery-3.6.0.js" type="text/javascript"></script>
    <script src="statics/js/config.js" type="text/javascript"></script>
    <script src="statics/js/util.js" type="text/javascript"></script>
</head>

<body>

<main>
    <header>
        <nav>
            <div class="top">
                <img src="statics/img/dota2_logo_horiz.png" alt="" class="img_logo">
            </div>
            <div class="top2"></div>

        </nav>
        <div class="homepage">
            <div class="video">
                <video muted1 autoplay="" preload="auto" loop="" playsinline="">
                    <source type="video/mp4" src="statics/video/dota_montage_02.mp4">
                </video>
            </div>
        </div>
        <div class="QuoteContainer">
            <div>
                <div class="QuoteText">“一款现代的多人游戏杰作”</div>
                <div class="QuoteCredit">-《Destructoid》</div>
            </div>
            <div class="HorizBar"></div>
        </div>
        <div class="BottomFade"></div>
        <div class="login">
            <div>用户登陆</div>
            <div id="tabcon">
                <div class="box show">
                    <form action="user" method="POST" id="loginForm">
                        <input class="user" id="userName" name="userName" type="text" value="" /> <br>
                        <input type="password" class="pwd" id="userPwd" name="userPwd" value=""/> <br />
                        <input name="rem" type="checkbox" value="1" class="inputcheckbox"/> <label>记住我</label>&nbsp;&nbsp;
                        <span id="msg" style="color: red;font-size: 12px"></span><br /><br />
                        <input type="button" class="log" value="登 陆" onclick="checkLogin();"/>&nbsp;&nbsp;&nbsp;<input type="reset" value="取 消" class="reg">
                    </form>
                </div>
            </div>
        </div>
    </header>
</main>


</body>


</html>
