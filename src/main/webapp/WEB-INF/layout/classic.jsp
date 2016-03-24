<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!--  For JSTL -->

<%-- <link href="<c:url value="/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/bootstrap/css/bootstrap-theme.min.css" />" rel="stylesheet">
<script src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/bootstrap/js/jquery.min.js" />"></script>
<script src="<c:url value="/bootstrap/js/jquery.validate.min.js" />"></script> --%>

<!-- For Spring Tag -->

  <%-- <spring:url value="/bootstrap/css/bootstrap.min.css" var="bootStrapMin" />
<spring:url value="/bootstrap/css/bootstrap-theme.min.css" var="bootStrapTheme" />
<spring:url value="/bootstrap/js/bootstrap.min.js" var="bootStrapJs" />
<spring:url value="/bootstrap/js/jquery.min.js" var="mainJs" />
<spring:url value="/bootstrap/js/jquery.validate.min.js" var="validatorJs" />
	
<link href="${bootStrapMin}" rel="stylesheet" />
<link href="${bootStrapTheme}" rel="stylesheet" />
<script src="${bootStrapJs}"></script>
<script src="${mainJs}"></script>
<script src="${validatorJs}"></script>   --%>

<!-- web link -->

<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>

<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>

<tilesx:useAttribute name="current"/>

<div class="container">

  <!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<spring:url value="/" />">Society API</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="${current == 'index' ? 'active' : ''}"><a href='<spring:url value="/" />'>Home</a></li>
               <security:authorize access="hasRole('ROLE_ADMIN')">
              	<li class="${current == 'users' ? 'active' : ''}"><a href="<spring:url value="/users.html" />">Users</a></li>
              </security:authorize>
              <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value="/register.html" />">Register</a></li>
              <security:authorize access="! isAuthenticated()">
	              <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value="/login.html" />">Login</a></li>
              </security:authorize>
              <security:authorize access="isAuthenticated()">
              	<li class="${current == 'account' ? 'active' : ''}"><a href="<spring:url value="/account.html" />">My account</a></li>
              	<li><a href="<spring:url value="/logout" />">Logout</a></li>
              </security:authorize>
              
              <li><a href="#">About</a></li>
              <li><a href="#">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>   
               </li>
             </ul>
               
             <ul class="nav navbar-nav navbar-right">
             	 <li class=""><a href="./">Default <span class="sr-only">(current)</span></a></li>
              	 <li><a href="">Static top</a></li>
              	 <li><a href="">login</a></li>
           	 </ul>
              
            
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </div>
      
      
	<tiles:insertAttribute name="body" />

	<br>
	<br>
	<center>
		<tiles:insertAttribute name="footer" />
	</center>

</div>

</body>
</html>