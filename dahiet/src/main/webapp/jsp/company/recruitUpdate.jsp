<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h2>채용 공고 수정 페이지</h2>
		</div>
		<hr />
		<form id="frm1" name="frm1"
			action="${pageContext.request.contextPath}/RecruitUp.do"
			method="post">
			<table border="1">
				<tr style="display: none">
					<th width="150">시퀀스</th>
					<td width="500"><input type="text" id="recruit_seq"
						name="recruit_seq" value="${vo.recruit_seq}"></td>
					<th width="150">사업자번호</th>
					<td width="500"><input type="text" id="no" name="no"
						value="${vo.no}"></td>
				</tr>
				<tr>
					<th width="80">공고 제목</th>
					<td width="250"><input style="width: 100%" type="text"
						id="title" name="title" value="${vo.title}"></td>
					<th width="80">모집부문</th>
					<td width="150"><input style="width: 100%" type="text"
						id="position" name="position" value="${vo.position}"></td>
					<th width="80">급여</th>
					<td width="150"><input style="width: 100%" type="text"
						id="salary" name="salary" value="${vo.salary}"></td>
					<!-- ${vo.newbi} -->
					<th>경력</th>
					<td><input type="radio" id="new" name="newbi">신입 <input
						type="radio" id="old" name="newbi">경력</td>
				</tr>
				<tr>
					<th width="80">근무형태</th>
					<!--  ${vo.emp_type} -->
					<td colspan="7"><label><input type="radio"
							name="emp_type" value="full"> 정규직</label> <label><input
							type="radio" name="emp_type" value="cont"> 계약직</label> <label><input
							type="radio" name="emp_type" value="part"> 아르바이트</label> <label><input
							type="radio" name="emp_type" value="inte"> 인턴직</label> <label><input
							type="radio" name="emp_type" value="disp"> 파견직</label></td>
				</tr>
				<tr>
					<th width="50">지역 선택</th>
					<td colspan="7"><c:forEach var="code" items="${codes}">
							<c:if test="${code.codename eq vo.loc}">
								<input type="radio" name="loc" value="${code.codename}" checked>${code.codevalue}
								</c:if>
							<c:if test="${code.codename ne vo.loc}">
								<input type="radio" name="loc" value="${code.codename}">${code.codevalue}
								</c:if>
						</c:forEach></td>

				</tr>
				<tr>
					<th width="50">담당 업무</th>
					<td colspan="7"><c:forEach var="itemcode" items="${itemcodes}">
							<label> <c:if test="${itemcode.itemid eq vo.work}">
									<input type="radio" name="work" value="${itemcode.itemid}"
										checked>${itemcode.itemname}
								</c:if> <c:if test="${itemcode.itemid ne vo.work}">
									<input type="radio" name="work" value="${itemcode.itemid}">${itemcode.itemname}
								</c:if>
							</label>
						</c:forEach></td>
				</tr>
				<tr>
					<th width="50">지원자격</th>
					<td colspan="8"><textarea id="qualify" name="qualify"
							rows="20" style="width: 100%;">${vo.qualify}</textarea></td>
				</tr>
				<tr>
					<td colspan="8" align="center"><input type="submit"
						value="공고등록"> &nbsp;&nbsp;
						<button type="button"
							onclick="location.href='${pageContext.request.contextPath}/RecruitDelete.do?recruit_seq=${vo.recruit_seq}'">삭제</button>
						<input type="reset" value="취 소"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>