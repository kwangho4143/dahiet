<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<div align="center">
	<c:if test="${not empty sessionScope.id  }">
		<h1>${ sessionScope.id }님 로그인  했습니다.</h1>
	</c:if>
	<c:if test="${sessionScope.id eq null }">
		<h1>${param.id } 님 로그인 실패 ${msg}</h1>
	</c:if>	
</div>
</body>
</html>