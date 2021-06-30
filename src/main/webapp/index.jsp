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

    <link rel="stylesheet" href="statics/css/login.css">
    <link rel="stylesheet" href="statics/css/bootstrap.min1.css">
</head>

<body>
    <h2>选课管理信息系统登陆</h2>

    <div class="container">

        <div id="error" class="row">
            ${error}
        </div>

        <form class="form-signin" action="signin" method="post">
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="email" required=""
                   autofocus="">
            <br/>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password"
                   required="">
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>

    </div>

    </body>
</html>
