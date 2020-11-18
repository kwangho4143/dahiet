<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 850px;
	border-bottom: 1px solid lightgrey;
}
</style>
</head>
<body>
	<div align="center">
<div style="padding-left: 130px; background-color: #f8f9fa; height: 70px" class="d-flex justify-content-between align-items-center">
			<h2>공고에 지원한 내역</h2>
				</div>
				<hr>
		<div>
			<div style="    min-height: 500px;">
				<table>
					<tr height="50">
						<th width="200">이력서 이름</th>
						<th width="200">회사</th>
						<th width="400">공고 이름</th>
						<th width="150">지원 날짜</th>
						<th width="200">지원한 이력서</th>
					</tr>
					<c:forEach var="vo" items="${list}">
						<tr height="50">
							<td width="200">${vo.rname}</td>
							<td width="200"><a href = "${pageContext.request.contextPath}/RecruitDetail.do?no=${vo.seq}">${vo.name}</a></td>
							<td width="400">${vo.title}</td>
							<td width="150">${vo.date}</td>
							<td width="200">
								<button type="button" id="bt" name="bt"
									onclick="location.href='${pageContext.request.contextPath}/ResumeResult.do?resumed_seq=${vo.seq}'">
									확인</button>
							</td>
						</tr>
					</c:forEach>
				</table>
				<br />
			</div>

		</div>

	</div>
</body>
</html>