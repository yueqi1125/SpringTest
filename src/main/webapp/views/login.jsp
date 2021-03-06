<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctxPath" value="${pageContext.request.contextPath}" scope="page"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Spring Test</title>
	<script src="${ctxPath}/static/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#Register").click(function(){
				window.location.href="${ctxPath}/views/register.jsp";
			})
		});
	</script>
</head>
<body>
	<div align="center">
		<h3>登录</h3>
		<hr>
		<c:if test="${msg != ''}">
			<c:out value="${msg}"/>
		</c:if>
		<form action="${ctxPath}/login.action" method="post">
			用户姓名：<input type="text" name="userName"><br>
			用户密码：<input type="password" name="passwd"><br>
			<input type="submit" value="登录">
			<input type="button" id="Register" value="注册用户">
		</form>
	</div>
</body>
</html>