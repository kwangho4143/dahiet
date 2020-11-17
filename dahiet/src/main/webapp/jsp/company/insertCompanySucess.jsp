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
			<h1>${param.name}님가입을 축하드립니다</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="150">아이디</th>
					<td width="500">${Vo.id}</td>
				</tr>
				<tr>
					<th width="150">비밀번호</th>
					<td>${Vo.pw}</td>
				</tr>
				<tr>
					<th width="150">사업자번호</th>
					<td>${Vo.no}</td>
				</tr>
				<tr>
					<th width="150">회사이름</th>
					<td>${Vo.name}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td>${Vo.tel}</td>
				</tr>
				<tr>
					<th width="150">주소</th>
					<td>${Vo.addr}</td>
				</tr>
				<tr>
					<th width="150">회사링크</th>
					<td>${Vo.link}</td>
				</tr>
				<tr>
					<th width="150">기업형태</th>
					<td>${Vo.type}</td>
				</tr>
				<tr>
					<th width="150">사원수</th>
					<td>${Vo.emps}</td>
				</tr>
				<tr>
					<th width="150">매출액</th>
					<td>${Vo.profit}</td>
				</tr>
				<tr>
					<th width="150">업 종</th>
					<td>${Vo.item}</td>
				</tr>
				<tr>
					<th width="150">로고</th>
					<td><img alt="회사 로고" src="${pageContext.request.contextPath}/images/${Vo.img}"> </td>
				</tr>
				
				
			</table>
		</div>
	</div>
</body>
</html>