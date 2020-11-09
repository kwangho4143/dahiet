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
			<form id="resumeFrm" name="resumeFrm" action="" method="post"
				enctype="multipart/form-data">

				<c:forEach var="vo" items="${list}">
					<div>
						<table>
							<tr height="50">
								<th width="150">이력서 번호</th>
								<td width="450">${vo.resume_seq}</td>
								<th width="150">지원 날짜</th>
								<td width="450">${vo.apply_date}</td>
							</tr>
						</table>
						<br />
					</div>
				</c:forEach>

			</form>
		</div>

	</div>
</body>
</html>