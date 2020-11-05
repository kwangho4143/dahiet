<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri ="http://java.sun.com/jsp/jstl/functions" %>

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
			action="${pageContext.request.contextPath}/showRecruitList.do"
			method="post">
			<table border="1">
				<tr>
					<th width="150">사업자번호</th>
					<td width="500"><input type="text" id="no" name="no" value="${vo.no}"></td>
				</tr>
				<tr>
					<th width="150">공고 제목</th>
					<td width="500"><input type="text" id="title" name="title" value="${vo.title}"></td>
				</tr>
				<tr>
					<th width="150">모집부문</th>
					<td><input type="text" id="position" name="position" value="${vo.position}"></td>
				</tr>
				<tr>
					<th width="150">근무형태</th>
					<td><input type="text" id="emp_type" name="emp_type" value="${vo.emp_type}"></td>
				</tr>
				<tr>
					<th width="150">지역 선택</th>
					<td>
						<c:forEach var="code" items="${codes}">
							<label>
								<input type="radio" name="loc" value="${code.codename}">${code.codevalue}
							</label>
						</c:forEach> 
					</td>
				</tr>
				<tr>
					<th width="150">담당 업무</th>
					<td>
						<c:forEach var="itemcode" items="${itemcodes}">
							<label>
								<c:if test="${itemcodes eq  } ">
									<input type="radio" name="work" value="${itemcode.itemid}" >${itemcode.itemname}
								</c:if>
							</label>
						</c:forEach> 
					</td>
				</tr>
				<tr>
					<th width="150">지원자격</th>
					<td><input type="text" id="qualify" name="qualify" value="${vo.qualify}"></td>
				</tr>
				<tr>
					<th width="150">급여</th>
					<td><input type="text" id="salary" name="salary" value="${vo.salary}"></td>
				</tr>
				<tr>
					<th width="150">신입 / 경력</th>
					<td><input type="text" id="newbi" name="newbi" value="${vo.newbi}"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit"value="공고등록"> &nbsp;&nbsp; 
						<input type="reset" value="취 소">
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>