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
			<h1>공 고 수 정</h1>
		</div>

		<form id="frm1" name="frm1"
			action="${pageContext.request.contextPath}/RecruitUp.do"
			method="post">
			<table border="1">
			<tr style="display:none">
					<th width="150">사업자번호</th>
					<td width="500"><input type="text" id="recruit_seq" name="recruit_seq" value="${vo.recruit_seq}"></td>
				</tr>
				<tr style="display:none">
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
								<c:if test="${code.codename eq vo.loc}">
									<input type="radio" name="loc" value="${code.codename}" checked>${code.codevalue}
								</c:if>
								<c:if test="${code.codename ne vo.loc}">
									<input type="radio" name="loc" value="${code.codename}">${code.codevalue}
								</c:if>
							</label>
						</c:forEach> 
					</td>
				</tr>
				<tr>
					<th width="150">담당 업무</th>
					<td>
						<c:forEach var="itemcode" items="${itemcodes}">
							<label>
								<c:if test="${itemcode.itemid eq vo.work}">
									<input type="radio" name="work" value="${itemcode.itemid}" checked>${itemcode.itemname}
								</c:if>
								<c:if test="${itemcode.itemid ne vo.work}">
									<input type="radio" name="work" value="${itemcode.itemid}">${itemcode.itemname}
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
						<input type="submit"value="공고수정"> &nbsp;&nbsp; 
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/RecruitDelete.do?recruit_seq=${vo.recruit_seq}'">삭제</button>
						<input type="reset" value="취 소">
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>