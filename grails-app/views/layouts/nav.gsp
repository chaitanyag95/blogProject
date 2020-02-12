<%--
  Created by IntelliJ IDEA.
  User: chaitanya
  Date: 06/02/20
  Time: 6:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Welcome to Rajneeti</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->

    <link href="${resource(dir: "assets/images/",file: "favico.png")}" >
    <!--  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">-->
    <link href="${resource(dir: "assets/images/",file: "apple-touch-icon.png")}" >

    <!-- Google Fonts -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">-->

    <!-- Bootstrap CSS File -->
    <!--<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
    <link href="${resource(dir: "assets/stylesheets/",file: "bootstrap.min.css")}" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <!--<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">-->
    <link href="${resource(dir: "assets/stylesheets/",file: "font-awesome.min.css")}" rel="stylesheet">
    <!--<link href="lib/animate/animate.min.css" rel="stylesheet">-->
    <link href="${resource(dir: "assets/stylesheets/",file: "animate.min.css")}" rel="stylesheet">


    <!-- Main Stylesheet File -->
    <!---<link href="css/style.css" rel="stylesheet">--->
    <link href="${resource(dir: "assets/stylesheets/",file: "style.css")}" rel="stylesheet">
    <g:layoutHead/>

</head>

<body>
<header id="header">
    <div class="container">

        <div id="logo" class="pull-left">
            <!--<a href="#hero"> <g:img dir="assets/images/" file="logo.png"></g:img></a>-->
            <!-- Uncomment below if you prefer to use a text logo -->
            <h1><g:link controller="welcome" action="index">Rajneeti</g:link></h1>
        </div>

        <nav id="nav-menu-container">
            <ul class="nav-menu">
                <!--<li class="menu-active"><a href="#hero">Home</a></li>-->
                <li><g:link controller="welcome" action="index">Home</g:link></li>
                <!--<li><a href="#joinus">Join Us</a></li>-->
                <li><g:link controller="welcome" action="SignUp">Join Us</g:link></li>

                <li><a href="#services">Blogs</a></li>
                <!--<li><a href="#portfolio">LogIn</a></li>-->
                <li><g:link controller="login" action="auth">Log In</g:link></li>
                <li><a href="#team">Know Admin</a></li>
                <li><a href="#contact">Contact Us</a></li>
            </ul>
        </nav><!-- #nav-menu-container -->
    </div>
</header><!-- #header -->


<g:layoutBody/>
<footer id="footer">
    <div class="footer-top">
        <div class="container">

        </div>
    </div>

    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong>Chaitanya</strong>. All Rights Reserved
        </div>
        <div class="credits">


        </div>
    </div>
</footer><!-- #footer -->

</body>
</html>