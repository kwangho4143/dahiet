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
					<td width="500">${vo.id}</td>
				</tr>
				<tr>
					<th width="150">비밀번호</th>
					<td>${vo.pw}</td>
				</tr>
				<tr>
					<th width="150">사업자번호</th>
					<td>${vo.no}</td>
				</tr>
				<tr>
					<th width="150">회사이름</th>
					<td>${vo.name}</td>
				</tr>
				<tr>
					<th width="150">전화번호</th>
					<td>${vo.tel}</td>
				</tr>
				<tr>
					<th width="150">주소</th>
					<td>${vo.addr}</td>
				</tr>
				<tr>
					<th width="150">회사링크</th>
					<td>${vo.link}</td>
				</tr>
				<tr>
					<th width="150">기업형태</th>
					<td>${vo.type}</td>
				</tr>
				<tr>
					<th width="150">사원수</th>
					<td>${vo.emps}</td>
				</tr>
				<tr>
					<th width="150">매출액</th>
					<td>${vo.profit}</td>
				</tr>
				<tr>
					<th width="150">업 종</th>
					<td>${vo.item}</td>
				</tr>
				<tr>
					<th width="150">로고</th>
					<td><img alt="회사 로고" src="${pageContext.request.contextPath}/images/${vo.img}"> </td>
				</tr>
				
				
			</table>
console.log('${param.img}')
		</div>
	</div>
</body>
</html>