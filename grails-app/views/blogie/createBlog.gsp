%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Lets Write!</title>
    <meta name="layout" content="blogieNav"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script type="text/javascript" language="javascript"
            src="${resource(dir: "assets/javascripts/", file: "jquery.js")}"></script>
    <script type="text/javascript" language="javascript"
            src="${resource(dir: "assets/javascripts/", file: "script.js")}"></script>
    <style>
    body {
        background: linear-gradient(rgba(0, 0, 0, .7), rgba(0, 0, 0, .9)), url('${resource(dir:"assets/images/", file:"create-bg.jpeg")}');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        min-height: 700px;
    }
    </style>
</head>

<body>
<br/><br/><br/><br/>

<div class="text-center text-secondary">
    <h2 style="color: white;margin: 10px">In our age there is no such thing as 'keeping out of politics'. All issues are political issues.<p
            class="text-md-right">-Chaitanya</p><br/></h2>

</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card" style="margin:.250px .210px .210px .250px">
                <header class="card-header">
                    <p>“You can always edit a bad page. You can’t edit a blank page.”</p>
                    <g:if test="${flash.message}">
                        <p>
                        <div class=" text-danger">${flash.message}</div></p>
                    </g:if>

                </header>
                <article class="card-body">
                    <g:form class="text-muted" controller="blogie" action="saveBlog">
                        <div class="form-group">
                            <input type="text" class="form-control" name="title" id="title" placeholder="शीर्षक"
                                   required
                                   autocomplete="off"/>
                        </div> <!-- form-group end.// -->
                        <div class="form-group">
                            <textarea class="form-control" id="content" name="content" rows="20"
                                      placeholder="Enter your story here" required></textarea>
                        </div>
                        <input class="btn btn-primary btn-block" type="submit" name="submit"
                               value="Share your story with world.">

                    </g:form>

                </article> <!-- card-body end .// -->

            </div> <!-- card.// -->
        </div> <!-- col.//-->
    </div> <!-- row.//-->
</div>
<br/><br/>
</body>
</html>