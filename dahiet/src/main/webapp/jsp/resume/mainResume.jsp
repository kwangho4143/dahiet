<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainResume.jsp</title>
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
			<h1>내 이력서 현황</h1>
		</div>
		<br />

		<div>
			<form id="resumeFrm" name="resumeFrm" action="" method="post"
				enctype="multipart/form-data">
				<div>
					<table>
						<tr height="50">
							<td height="70" colspan="5" align="right">
								<button type="button"
									onclick="location.href='${pageContext.request.contextPath}/InsertResume.do';"
									class="btn btn-danger">새 이력서 등록하기</button>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					</table>
					<br />
				</div>

				<c:forEach var="vo" items="${relist}">
					<div>
						<table>
							<tr height="50">
								<th width="150">이력서 번호</th>
								<td width="450">${vo.resume_seq}</td>
								<th width="150">이력서 이름</th>
								<td width="450">${vo.resume_name}</td>
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