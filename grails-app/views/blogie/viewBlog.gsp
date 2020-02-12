<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="blogieNav" />
    <title>Stories</title>
    <style>
    body {
        background:linear-gradient(rgba(0,0,0,.7),rgba(0,0,0,.9)),url('${resource(dir:"assets/images/", file:"blogger-home.jpg")}');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        min-height: 700px;
    }
    </style>
</head>
<body>
<br/><br/><br/><br/>
<g:if test="${results.size()==0}">
    <p class="text-center text-muted">You have not posted any blogs yet</p>
</g:if>
<g:else>
    <div class="text-center">
        <g:each in="${results}" var="result" status="i">
            <h3 class="text-muted text-uppercase">${result[0]}</h3>
            <p class="text-capitalize text-justify">${result[1]}</p>
        </g:each>
    </div>
</g:else>
</body>
</html>