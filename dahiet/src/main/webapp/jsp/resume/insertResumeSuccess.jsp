<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<hr>
	<div align = "center">
		<h1><c:out value="${sessionScope.id}"/> 님의 이력서를 성공적으로 등록했습니다.</h1>
		<%--= exception.getMessage() --%><br/>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/resume/mainResume.jsp';">목록으로</button>
	</div>

</body>
</html>