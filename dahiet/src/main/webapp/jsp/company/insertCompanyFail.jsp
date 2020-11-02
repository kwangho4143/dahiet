<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<hr>
	<div align = "center">
		<h1>회원가입이 실패 했습니다.</h1>
		<%--= exception.getMessage() --%><br/>
		<button type="button" onclick="${pageContext.request.contextPath}/location.href='loginForm.jsp';">돌아가기</button>
	</div>

</body>
</html>