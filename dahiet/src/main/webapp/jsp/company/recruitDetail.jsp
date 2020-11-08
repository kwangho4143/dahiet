<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main id="main">
		<form>
			<table border="1"
				style="text-align: center; margin-left: auto; margin-right: auto;">
				<tr>
					<td colspan="2" rowspan="8">${vo.img}</td>
					<th colspan="4" rowspan="2">${vo.title}</th>
				</tr>
				<tr />
				<tr>
					<th colspan="2">기업정보</th>
					<th colspan="2">근무조건</th>
				</tr>
				<tr>
					<th>회사이름</th>
					<td>${vo.name}</td>
					<th>근무형태</th>
					<td>${vo.emp_type}</td>
				</tr>
				<tr>
					<th>업종</th>
					<td>${vo.item}</td>
					<th>회사위치</th>
					<td>${vo.loc}</td>
				</tr>
				<tr>
					<th>사원수</th>
					<td>${vo.emps}</td>
					<th>모집부문</th>
					<td>${vo.position}</td>
				</tr>
				<tr>
					<th>기업형태</th>
					<td>${vo.type}</td>
					<th>담당업무</th>
					<td>${vo.work}</td>
				</tr>
				<tr>
					<th>매출액</th>
					<td colspan="3">${vo.profit}</td>
				</tr>
				<tr>
					<th>회사홈페이지</th>
					<td colspan="5">${vo.link}</td>
				</tr>
				<tr>
					<td colspan="7">${vo.qualify}</td>
				</tr>
			</table>

		</form>
	</main>
</body>
</html>