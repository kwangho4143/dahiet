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
	<main id="main">
		<c:forEach var="relist" items="${relists}">
		<div>
			<table>
				<tr>
					<th>${relist.no }</th>
					<td colspan="3">${relist.title }</td>
					<td>${relist.id }</td>
					<td>${relist.redate }</td>
				</tr>
			</table>
		</div>
		</c:forEach>
	</main>
</body>
</html>