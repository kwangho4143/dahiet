<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입성공</title>
<style type="text/css">
th.labee {
	width: 100px;
	background-color: #f8f9fa;
	text-align: center;
}

td.contee {
	width: 200px;
	text-align: center;
}

td.conteee {
	text-align: center;
}
</style>
</head>
<body>
	<div align="center">
	<div style="padding-left: 130px; background-color: #f8f9fa; height: 70px" class="d-flex justify-content-between align-items-center">
			<h2>기업 회원 가입</h2>
			<h4>${param.name}의 가입을 환영합니다</h4>
				</div>
				<hr>
		<div>
			<table border="1" style="align-content: center;">
				<tr>
					<th class="labee">아이디</th>
					<td class="contee">${Vo.id}</td>
					<td rowspan="6" style="max-height: 150px; max-width: 120px"><img
						style="height: 150px; max-width: 120px;" alt="회사 로고"
						src="${pageContext.request.contextPath}/images/${Vo.img}"></td>
				</tr>
				<tr>
					<th class="labee">사업자번호</th>
					<td class="contee">${Vo.no}</td>
				</tr>
				<tr>
					<th class="labee">회사이름</th>
					<td class="contee">${Vo.name}</td>
				</tr>
				<tr>
					<th class="labee">전화번호</th>
					<td class="contee">${Vo.tel}</td>
				</tr>

				<tr>
					<th class="labee">기업형태</th>
					<td class="contee">${Vo.type}</td>
				</tr>
				<tr>
					<th class="labee">사원수</th>
					<td class="contee">${Vo.emps}</td>
				</tr>
				<tr>
					<th class="labee">매출액</th>
					<td colspan="2" class="conteee">${Vo.profit}</td>
				</tr>
				<tr>
					<th class="labee">업종</th>
					<td colspan="2" class="conteee">${Vo.item}</td>
				</tr>
				<tr>
					<th class="labee">주소</th>
					<td colspan="2" class="conteee">${Vo.addr}</td>
				</tr>
				<tr>
					<th class="labee">회사링크</th>
					<td colspan="2" class="conteee">${Vo.link}</td>
				</tr>


			</table>
		</div>
	</div>
</body>
</html>