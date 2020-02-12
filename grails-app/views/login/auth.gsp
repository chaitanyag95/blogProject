<%--
  Created by IntelliJ IDEA.
  User: chaitanya
  Date: 06/02/20
  Time: 5:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Log In</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="${resource(dir: "assets/stylesheets/", file: "login.css")}" rel="stylesheet">
    <meta name="layout" content="nav">

</head>

<body>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="centered">
            <h1><g:link controller="welcome" action="index">Rajneeti</g:link></h1>

            <h2>Swagatam</h2>
        </div>

        <!-- Login Form -->
        <!-- <form>-->
        <!--<input type="text" id="login" class="fadeIn second" name="login" placeholder="username">-->
        <!--input type="text" id="password" class="fadeIn third" name="login" placeholder="password">-->
        <!--<input type="submit" class="fadeIn fourth" value="Log In">-->
        <!--</form>-->
        <!--auth ,gsp overriden fields-->


        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform"
              autocomplete="off">
            <p>
                <label for="username">Username:</label>
                <input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
            </p>

            <p>
                <label for="password">Password:</label>
                <input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
            </p>

            <p id="remember_me_holder">
                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me"
                       <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                <label for="remember_me">Remember Me</label>
            </p>
            <g:if test='${flash.message}'>
                <p>
                    <!-- Auth.gsp wrong password !!!-->

                <div class="login_message text-danger">${flash.message = " Wrong Credentials"}</div></p>

            </g:if>

            <p>
                <input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
            </p>
        </form>

    </div>
</div>

</body>
</html>