<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Latest compiled and minified CSS -->
<c:url value="/resources/css" var="cssPath"></c:url>
<c:url value="/resources/js" var="jsPath"></c:url>

<link rel="stylesheet" href="${cssPath }/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="${cssPath }/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
			  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			  crossorigin="anonymous"></script>
<script src="${jsPath }/bootstrap.min.js" ></script>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div>
				<h1>Login do usuário</h1>
			</div>
		</div>
		<div class="row">
			<form:form servletRelativeAction="/login" method="POST" css="form">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Email</label>
						<input name="username" type="text" class="form-control"/>
						
					</div>
					<div class="form-group">
						<label>Password</label>
						<input type="password" name="password" class="form-control"/>
						
					</div>
				</div>
				
				<button type="submit" class="btn btn-primary">Logar</button>
			</form:form>
		</div>
	
	</div>
		
</body>
</html>