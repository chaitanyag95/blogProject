<%--
  Created by IntelliJ IDEA.
  User: chaitanya
  Date: 06/02/20
  Time: 5:57 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Log In</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="${resource(dir: "assets/javascripts/",file: "script.js")}"></script>

    <link href="${resource(dir: "assets/stylesheets/",file: "login.css")}" rel="stylesheet">
    <meta name="layout" content="nav">
</head>

<body>

<div class="wrapper fadeInDown">
    <div id="formContent" align="center">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="centered">
            <h1><g:link controller="welcome" action="index">Rajneeti</g:link></h1>
        </div>

        <!-- Login Form -->
        <g:form content="center" controller="blogger" action="register">
            <input type="text" id="form_firstname" class="fadeIn second" name="firstname"  placeholder="First Name">
            <p class="error_form" id="firstname_error_message"></p>
            <input type="text" id="form_lastname" class="fadeIn second" name="lastname" placeholder="Last Name">
            <p class="error_form" id="lastname_error_message"></p>

            <input type="text" id="form_username" class="fadeIn second" name="username" placeholder="Username">
            <p class="error_form" id="username_error_message"></p>
            <input type="password" id="form_password" class="fadeIn third" name="password" placeholder="Password"><br/>
            <p class="error_form" id="password_error_message"></p>
            <input type="password" id="form_confirm_password" class="fadeIn third" name="confirm_password" placeholder="Confirm Password">
            <p class="error_form" id="confirm_password_error_message"></p>
            <input type="submit" class="fadeIn fourth" value="Lets Go!">

        </g:form>

        </div>
</div>



</body>
</html>