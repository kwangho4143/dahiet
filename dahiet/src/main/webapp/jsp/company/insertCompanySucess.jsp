<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입성공</title>
</head>
<body>

	<hr>
	<div align="center">
		<div>
			<h1>${param.id}님가입을 축하드립니다</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="150">아이디</th>
					<td width="500">${param.id}</td>
				</tr>
				<tr>
					<th width="150">비밀번호</th>
					<td>${param.pw}</td>
				</tr>
				<tr>
					<th width="150">사업자번호</th>
					<td>${param.no}</td>
				</tr>
				<tr>
					<th width="150">이메일</th>
					<td>${param.email}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td>${param.tel}</td>
				</tr>
				<tr>
					<th width="150">주소</th>
					<td>${param.addr}</td>
				</tr>
				
			</table>

		</div>
	</div>
</body>
</html>