<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
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
	<div>
		<nav class="navbar navbar-inverse">
		  <div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${s:mvcUrl('HC#home').build() }">HOME</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="${s:mvcUrl('PC#listar').build() }">Lista livros <span class="sr-only">(current)</span></a></li>
		        <li><a href="${s:mvcUrl('PC#form').build() }">Cadastra livros</a></li>
		      </ul>
		      
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>
	<div>
		<h3>${sucesso }</h3>
	</div>
	<div class="container">
		<div class="row">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Título</th>
						<th>Descrição</th>
						<th>Preços</th>
						<th>Páginas</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${produtos }" var="produto">
						<tr>
							<td>
								<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">${produto.nome }</a>
							</td>
							<td>${produto.descricao }</td>
							<td>${produto.precos }</td>
							<td>${produto.nPaginas }</td>
						</tr>
						
					</c:forEach>
				</tbody>
			</table>
		
		</div>
	</div>
	
</body>
</html>