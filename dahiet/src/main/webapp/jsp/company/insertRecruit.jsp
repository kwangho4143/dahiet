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
	<div style="padding-left: 130px; background-color: #f8f9fa; height: 70px" class="d-flex justify-content-between align-items-center">
			<h2>공고 등록</h2>
				</div>
				<hr>
	<div align="center">

		<form id="frm1" name="frm1"
			action="${pageContext.request.contextPath}/insertRecruit.do"
			method="post">
			<table border="1" style="margin-left: 106px;">
				<tr>
					<th width="80">공고 제목</th>
					<td colspan="2" width="250"><input style="width: 100%" type="text" id="title" name="title"></td>
					<th width="80">급여</th>
					<td width="150"><input style="width: 100%" type="text" id="salary" name="salary"></td>
					<th>경력</th>
					<td align="center"><input type="radio" id="new" name="newbi">신입
					&nbsp;&nbsp;&nbsp;
					<input type="radio" id="old" name="newbi">경력</td>
					
				</tr>
				<tr>
				<th width="80">근무형태</th>
				<td colspan="7">
						<label><input type="radio" name="emp_type" value="a1"> 정규직</label> 
						<label><input type="radio" name="emp_type" value="a2"> 계약직</label> 
						<label><input type="radio" name="emp_type" value="a3"> 아르바이트</label>
						<label><input type="radio" name="emp_type" value="a4"> 인턴직</label> 
						<label><input type="radio" name="emp_type" value="a5"> 파견직</label>
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
					<td colspan="8" align="right"><input class="btn btn-sm btn-danger" type="submit"
						value="공고등록"> &nbsp;&nbsp; <input class="btn btn-sm btn-danger" type="reset" value="취 소"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>