<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: macb
  Date: 27/02/16
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IMB</title>

    <style>
        #cont {background-color: lightskyblue;}
    </style>
    <%@include file="/WEB-INF/views/jsp/parts/styles.jspf" %>
</head>
<body>
<%--${userList}123--%>
<%--<ul>--%>
<%--<c:forEach items="${userList}" var="user">--%>
<%--<li>--%>
<%--${user.name}--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--</ul>--%>


<nav class="navbar navbar-default"">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img alt="IMB">
            </a>
        </div>
    </div>
</nav>

<div class="container" id="cont">
    <div class="row">
        <div class="col-md-6 col-sm-12 col-md-offset-3 col-sm-offset-0">


            <div class="panel panel-warning" style="margin-top: 50px;">

            <div class="panel-heading">Login form</div>
            <div class="panel-body">
                    <form method="post" action="${pageContext.servletContext.contextPath}/auth">

                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"><i
                                    class="glyphicon glyphicon-user"></i></span>
                            <select class="form-control" placeholder="Username"
                                <c:forEach items="${userList}" var="user">
                            <option>${user.name}</option></c:forEach>
                            </select>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon2"><i
                                    class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" class="form-control" placeholder="Password"
                                   aria-describedby="basic-addon2"/>
                        </div>
                        <div>
                            <input type="submit" align="" class="btn btn-success" value="Login"/>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<%@include file="/WEB-INF/views/jsp/parts/scripts.jspf" %>

</body>
</html>
