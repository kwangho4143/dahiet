<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="assets/css/style.css" rel="stylesheet">
</head>
<body>

	<div align="center">
		<div>
			<h1>공 고 등 록</h1>
		</div>

		<form id="frm1" name="frm1"
			action="${pageContext.request.contextPath}/insertRecruit.do"
			method="post">
			<table border="1">
				<tr>
					<th width="80">공고 제목</th>
					<td width="250"><input style="width: 100%" type="text" id="title" name="title"></td>
					<th width="80">모집부문</th>
					<td width="150"><input style="width: 100%" type="text" id="position" name="position"></td>
					<th width="80">급여</th>
					<td width="150"><input style="width: 100%" type="text" id="salary" name="salary"></td>
					<th>경력</th>
					<td><input type="radio" id="new" name="newbi">신입
					<input type="radio" id="old" name="newbi">경력</td>
					
				</tr>
				<tr>
				<th width="80">근무형태</th>
				<td colspan="7">
						<label><input type="radio" name="emp_type" value="full"> 정규직</label> 
						<label><input type="radio" name="emp_type" value="cont"> 계약직</label> 
						<label><input type="radio" name="emp_type" value="part"> 아르바이트</label>
						<label><input type="radio" name="emp_type" value="inte"> 인턴직</label> 
						<label><input type="radio" name="emp_type" value="disp"> 파견직</label>
					</td>
					</tr>
				<tr>
					<th width="50">지역 선택</th>
					<td colspan="7"><c:forEach var="code" items="${codes}">
							<label> <input type="radio" name="loc"
								value="${code.codename}">${code.codevalue}
							</label>
						</c:forEach></td>
						
				</tr>
				<tr>
					<th width="50">담당 업무</th>
					<td colspan="7"><c:forEach var="itemcode" items="${itemcodes}">
							<label> <input type="radio" name="work"
								value="${itemcode.itemid}">${itemcode.itemname}
							</label>
						</c:forEach></td>
				</tr>
				<tr>
					<th width="50">지원자격</th>
					<td colspan="8"><textarea id="qualify" name="qualify"
							rows="20" style="width: 100%;" placeholder="내용을 입력하세요"></textarea></td>
				</tr>
				<tr>
					<td colspan="8" align="center"><input type="submit"
						value="공고등록"> &nbsp;&nbsp; <input type="reset" value="취 소"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>