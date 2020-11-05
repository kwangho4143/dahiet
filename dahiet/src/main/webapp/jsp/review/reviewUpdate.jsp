<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="re_up_Frm" name="re_up_Frm"
		action="${pageContext.request.contextPath}/ReviewUpdate.do"
		method="post" enctype="multipart/form-data">
			<h1 align="center">취업 토크 수정 페이지</h1>
		<div style="margin: 20%, 10%, 20%, 10%" align="center">
			<table border="1" style="align-items: center">
				<tr align="center">
					<th width="100px" height="30px">제목</th>
					<td colspan="5"><input style="width: 100%" type="text"
						value="${vo.title }"></td>
				</tr>
				<tr style="display: none" align="center">
					<th width="100px" height="30px">글번호</th>
					<td width="80px">${vo.no }</td>
					<th width="100px" height="30px">아이디</th>
					<td width="80px"><input type="text" value="${vo.id }"></td>

					<th width="100px" height="30px">회사</th>
					<td width="80px">${vo.company }</td>
					<th width="100px" height="30px">경력</th>
					<td width="80px"><input type="text" value="${vo.newbi }"></td>
				</tr>
				<tr>
					<td colspan="8"><textarea id="content" name="content"
							rows="20" cols="120">${vo.content}</textarea></td>
				</tr>
				<tr>
					<td colspan="8"><button>수정</button></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>