<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form servletRelativeAction="/usuarios" method="POST">
		
		<div>
			<label>Nome</label>
			<input type="text" name="nome">
		</div>
		<div>
			<label>Email</label>
			<input type="text" name="email">
		</div>
		<div>
			<label>Password</label>
			<input type="password" name="password">
		</div>
		<input type="hidden" name="ROLE">
		
		<button type="submit">Cadastrar</button>
		
	</form:form>

</body>
</html>