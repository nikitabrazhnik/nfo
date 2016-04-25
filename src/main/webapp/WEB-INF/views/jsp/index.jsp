<%--
  Created by IntelliJ IDEA.
  User: macb
  Date: 27/02/16
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IMB</title>

    <%@include file="/WEB-INF/views/jsp/parts/styles.jspf" %>
</head>
<body>
<div class="container">
    <div class="page-header">
        <h1>Hello, Bootstrap!</h1>
    </div>

    <div class="row">

        <div class="col-md-3">
            <button class="btn btn-default" data-toggle="collapse" data-target="#side-menu">CLICK</button>
            |
            <button class="btn btn-primary" onclick="sendLocation();">CLICK</button>
            <div id="side-menu" class="collapse">
                <ul class="list-group">
                    <c:forEach items="${userList}" var="user">
                        <li class="list-group-item">
                            <form id="form_${user.id}" method="post">
                                <input type="hidden" name="username" value="${user.name}" />
                                <a href="javascript:document.getElementById('form_${user.id}').submit();">${user.name}</a>
                            </form>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="col-md-9">

            <div id="map" style="height: 500px;"></div>

        </div>

    </div>


</div>

<%@include file="/WEB-INF/views/jsp/parts/scripts.jspf" %>

<script src="${pageContext.servletContext.contextPath}/res/js/google.map.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIIhJsjN3XcBNF9S5mMTVkxbK5XPqAjsk&callback=initMap"></script>


</body>
</html>
