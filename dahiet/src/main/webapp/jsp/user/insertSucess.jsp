<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입성공</title>
</head>
<body>
<div align="center">
	<div style="padding-left: 130px; background-color: #f8f9fa; height: 70px" class="d-flex justify-content-between align-items-center">
			<h2>유저 회원 가입</h2>
			<h4>${vo.name}님가입을 축하드립니다</h4>
				</div>
				<hr>
		<div>
			<table border="1">
				<tr>
					<th width="150">아이디</th>
					<td width="200">${vo.id}</td>
					<td rowspan="6" style="max-height: 150px; max-width: 120px"><img
						style="height: 150px; max-width: 120px;" alt="사진"
						src="${pageContext.request.contextPath}/images/${vo.image}"></td>
				</tr>
				<tr>
					<th width="150">이름</th>
					<td>${vo.name}</td>
				</tr>
				<tr>
					<th width="150">생일</th>
					<td>${vo.birth}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td>${vo.tel}</td>
				</tr>
				<tr>
					<th width="150">최종학력</th>
					<td>${vo.univ}</td>
				</tr>
				<tr>
					<th width="150">전공</th>
					<td>${vo.major}</td>
				</tr>
				<tr>
					<th width="150">이메일</th>
					<td colspan="2">${vo.email}</td>
				</tr>
				<tr>
					<th width="150">주소</th>
					<td colspan="2">${vo.addr}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td colspan="2">${vo.tel}</td>
				</tr>
				<tr>
				</tr>

			</table>

		</div>
	</div>
</body>
</html>