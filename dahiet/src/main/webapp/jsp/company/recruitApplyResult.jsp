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

		<div>
			<h1> 지원자 현황</h1>
		</div>
		<br />

		<div>
		
				<c:forEach var="vo" items="${list}">
					<div>
						<table>
							<tr height="50">
								<th width="100">이력서 번호</th>
								<td width="200">${vo.resume_seq}</td>
								<th width="100">지원 날짜</th>
								<td width="200">${vo.apply_date}</td>
								<td>
								<button id = "bt" name = "bt" onclick = "location.href='${pageContext.request.contextPath}/ResumeResult.do?resumed_seq=${vo.resume_seq}'">지원자 이력서 확인</button>
								</td>
							</tr>
						</table>
						<br />
					</div>
				</c:forEach>

		</div>

	</div>
</body>
</html>