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
				<div class="d-flex justify-content-between align-items-center">
					<h2>취업 토크</h2>
					<button type="button"
						onclick="location.href='${pageContext.request.contextPath}/recruitCheck.do';"
						class="get-started-btn ml-auto">공고 등록</button>
				</div>
				<hr />
				<div align="center">
					<table style="width: 80%;">
						<tr align="center">
							<th style="width: 5%; height: 1px">번호</th>
							<th align="left" colspan="3" style="width: 70%;">공고제목</th>
							<th style="width: 15%;">모집부분</th>
							<th style="width: 10%;">근무형태</th>
							<th style="width: 10%;">지원자격</th>
						</tr>
						<c:forEach var="rlist" items="${rlists}">
							<tr align="center">
								<td><a href="${pageContext.request.contextPath}
								/Recruitupdate.do?recruit_seq=${rlist.recruit_seq}">${rlist.recruit_seq}</a></td>
								<td colspan="3">${rlist.title }</td>
								<td>${rlist.position }</td>
								<td>${rlist.emp_type }</td>
								<td>${rlist.qualify }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</section>
	</main>
</body>
</html>