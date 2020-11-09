<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th.title {
	 width: 100px; 
	 height: 30px;
	 }
</style>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h2>채용 공고 상세 페이지</h2>
			<p>
				<a href="${pageContext.request.contextPath}/SearchAction.do">공고
					목록</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<form action="${pageContext.request.contextPath}/ResumeApply.do?recruit_seq=${vo.recruit_seq}&resume_seq=${reseq.seq}">
					<label>이력서 선택</label>
					<select name="resume" id="resume">
					<c:forEach var="reseq" items="${rrlists}">
					<option value="${reseq.resume_seq}">${reseq.resume_name}
					</c:forEach>
					</select>
					<button>지원하기</button>
					</form>			
		</div>
		<hr />
		<main id="main">
			<form>
			<div style="margin: 20%, 10%, 20%, 10%" align="center">
				<table border="1" style="text-align: center;">
					<tr>
						<td colspan="2" rowspan="6"><img style="margin: 0px;" alt="회사로고"
							src="${pageContext.request.contextPath}/images/${vo.img}"></td>
						<th width="800px" colspan="6" rowspan="2" style="font-size: 35px">${vo.title}</th>
					</tr>
					<tr />
					<tr>
						<th class="title">회사이름</th>
						<td>${vo.name}</td>
						<th class="title">근무형태</th>
						<td>${vo.emp_type}</td>
						<th class="title">업종</th>
						<td>${vo.item}</td>
					</tr>
					<tr>
						<th class="title">회사위치</th>
						<td>${vo.loc}</td>
						<th class="title">사원수</th>
						<td>${vo.emps}</td>
						<th class="title">모집부문</th>
						<td>${vo.position}</td>
					</tr>
					<tr>
						<th class="title">기업형태</th>
						<td>${vo.type}</td>
						<th class="title">담당업무</th>
						<td>${vo.work}</td>
						<th class="title">매출액</th>
						<td colspan="3">${vo.profit}</td>
					</tr>
					<tr>
						<th class="title">회사홈페이지</th>
						<td colspan="5">${vo.link}</td>
					</tr>
					<tr>
						<td colspan="8">${vo.qualify}</td>
					</tr>
				</table>
</div>
			</form>
		</main>
	</div>
</body>
</html>