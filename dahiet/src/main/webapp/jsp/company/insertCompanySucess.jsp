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
					<th width="150">회사이름</th>
					<td>${param.name}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td>${param.tel}</td>
				</tr>
				<tr>
					<th width="150">주소</th>
					<td>${param.addr}</td>
				</tr>
				<tr>
					<th width="150">회사링크</th>
					<td>${param.link}</td>
				</tr>
				<tr>
					<th width="150">기업형태</th>
					<td>${param.type}</td>
				</tr>
				<tr>
					<th width="150">사원수</th>
					<td>${param.emps}</td>
				</tr>
				<tr>
					<th width="150">매출액</th>
					<td>${param.profit}</td>
				</tr>
				<tr>
					<th width="150">업 종</th>
					<td>${param.item}</td>
				</tr>
				<tr>
					<th width="150">로고</th>
					<td>${param.img}</td>
				</tr>
				
				
			</table>

		</div>
	</div>
</body>
</html>