<!DOCTYPE html>
<html>
<head>
    <link href="${resource(dir: "assets/stylesheets/", file: "bootstrap.min_new.css")}" rel="stylesheet">
    <link href="${resource(dir: "assets/stylesheets/", file: "all.min.css")}" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <!-- Custom styles for this template -->
    <link href="${resource(dir: "assets/stylesheets/", file: "clean-blog.min.css")}" rel="stylesheet">
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top bg-dark" id="mainNav">
    <div class="container">
        <g:link class="navbar-brand" controller="blogie" action="index">Rajneeti</g:link>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <g:link controller="blogie" action="index">Home</g:link>
                </li>
                <li class="nav-item">
                    <g:link controller="blogie" action="viewBlog">View Blogs</g:link>
                </li>
                <li class="nav-item">
                    <g:link controller="blogie" action="createBlog">Create Blogs</g:link>
                </li>
                <li class="nav-item">
                    <sec:ifLoggedIn>
                        <div class="dropdown">
                            <a style="font-size: 10px;" class="btn btn-outline-success dropdown-toggle" href="#"
                               role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false">
                                Hello <sec:username/>
                            </a>

                            <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuLink">
                                <g:link class="dropdown font-weight-bold text-danger text-decoration-none"
                                        controller="logout">Logout</g:link>
                            </div>
                        </div>
                    </sec:ifLoggedIn>
                </li>
            </ul>
        </div>
    </div>
</nav>
<g:layoutBody/>
<hr>
<footer id="footer" style="background-color: #000000">
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
</footer>
</body>
</html>