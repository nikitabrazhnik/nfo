<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>IMB</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Nikita Brazhnik">


    <%@include file="/WEB-INF/views/jsp/parts/styles.jspf" %>

    <!-- Fonts -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <%--<link href='http://fonts.googleapis.com/css?family=Wire+One' rel='stylesheet' type='text/css'>--%>
    <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">

</head>

<body class="theme-invert">

<!-- Fixed navbar -->
<nav class="mainmenu" style="color: white;">
    <div class="container">
        <div class="dropdown">
            <button type="button" class="navbar-toggle" data-toggle="dropdown"><span class="icon-bar"></span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span></button>
            <ul class="dropdown-menu ddSize" role="menu" aria-labelledby="dLabel">
                <li><a href="#" class="active">Sign in</a></li>
                <li><a href="#">Join now</a></li>
                <li><a href="#">About service</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>


<!-- container -->
<div class="container">

    <div class="row">

        <!-- Article main content -->
        <article class="col-xs-12 maincontent">
            <header class="page-header" style="border-bottom: none;">
                <h1 align="right" class="page-title text-light">Registration</h1>
            </header>

            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <form action="/imb/signup" method="post">
                    <div class="panel panel-default">
                        <div class="panel-body">

                            <div class="top-margin">
                                <h5 class="thin text-left">First name</h5>
                                <input type="text" class="form-control">
                            </div>
                            <div class="top-margin">
                                <h5 class="thin text-left">Last name</h5>
                                <input type="text" class="form-control">
                            </div>
                            <div class="top-margin">
                                <h5 class="thin text-left">Email address<span class="text-danger"> *</span></h5>
                                <input type="text" class="form-control">
                            </div>

                            <div class="row top-margin">
                                <div class="col-sm-6">
                                    <h5 class="thin text-left">Password<span class="text-danger"> *</span></h5>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="col-sm-6">
                                    <h5 class="thin text-left">Confirm password<span class="text-danger"> *</span></h5>
                                    <input type="text" class="form-control">
                                </div>
                            </div>

                            <hr>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-lg-12 text-right">
                            <button class="btn btn-default btn-lg" type="submit">Register</button>

                        </div>

                    </div>
                </form>
            </div>

        </article>
        <!-- /Article -->

    </div>
</div>    <!-- /container -->


<%@include file="/WEB-INF/views/jsp/parts/scripts.jspf" %>

</body>
</html>
