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
					<th width="150">이름</th>
					<td>${param.name}</td>
				</tr>
				<tr>
					<th width="150">생일</th>
					<td>${param.birth}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td>${param.tel}</td>
				</tr>
				<tr>
					<th width="150">최종학력</th>
					<td>${param.univ}</td>
				</tr>
				<tr>
					<th width="150">주소</th>
					<td>${param.addr}</td>
				</tr>
				<tr>
					<th width="150">이메일</th>
					<td>${param.email}</td>
				</tr>
				<tr>
					<th width="150">전공</th>
					<td>${param.major}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td>${param.tel}</td>
				</tr>
				<tr>
					<th width="150">사진</th>
					<td>${param.img}</td>
				</tr>

			</table>

		</div>
	</div>
</body>
</html>