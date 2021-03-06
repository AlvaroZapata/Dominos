<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pizza - Login</title>
		<!--<c:set var="path" value="${pageContext.request.contextPath}" scope="request"/>
		--><style type="text/css">
			
			#login{
				width: 400px;
				margin-left: auto;
				margin-right: auto;
				margin-top: 100px;
			}
			
			#btn-login{
				width: 100%;
			}
		</style>	
	</head>
	<body>
		<section id="login" class="panel panel-primary">
			
			<c:if test='${not empty param["sinacceso"]}'>
				<div class="alert alert-warning">
					Usuario y o contraseña son incorrectos!
				</div>
			</c:if>
			
			<c:if test='${not empty param["salir"]}'>
				<div class="alert alert-info">
					Has salido de la sesion!
				</div>
			</c:if>
			
			<!--<form action="${path}/autenticar" method="post">-->
			<form action='<c:url value="/autenticar"/>' method="post">
				<div class="panel-heading">
					Pizza - Login
				</div>
				
				<div class="panel-body">
					<label for="usuario"></label>
					<input id="username" name="username" class="form-control" required>
					
					<label for="senha"></label>
					<input type="password" id="password" name="password" class="form-control" required>
				</div>
				
				<div class="panel-footer">
					<button id="btn-login" class="btn btn-primary">Entrar</button>
				</div>
				
				<input type="hidden" id="_csrf" name="_csrf" value="${_csrf.token}">
			</form>
		</section>
	
	</body>
</html>