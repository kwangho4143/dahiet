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
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<div style="padding-left: 100px;" class="d-flex justify-content-between align-items-center">
					<h2>취업 토크</h2>
					<button type="button"
						onclick="location.href='${pageContext.request.contextPath}/ReviewCheck.do';"
						class="get-started-btn ml-auto">토크 등록</button>
				</div>
				<hr />
				<div style="padding-left: 80px;" align="center">
					<table style="width: 80%;">
						<tr align="center">
							<th style="width: 5%; height: 1px">번호</th>
							<th align="left" colspan="3" style="width: 70%;">제목</th>
							<th style="width: 10%;">작성 일자</th>
						</tr>
						<c:forEach var="relist" items="${relists}">
							<tr align="center">
								<td>${relist.no }</td>
								<td colspan="3"><a href="${pageContext.request.contextPath}
								/ReviewDetail.do?no=${relist.no}">${relist.title }</a></td>
								<td>${relist.redate }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</section>
	</main>
</body>
</html>