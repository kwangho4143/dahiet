<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
<div style="padding-left: 130px; background-color: #f8f9fa; height: 70px" class="d-flex justify-content-between align-items-center">
			<h2>등록한 공고 목록</h2>
			<button style="margin-right: 109px;" type="button"
						onclick="location.href='${pageContext.request.contextPath}/recruitCheck.do';"
						class="get-started-btn ml-auto">공고 등록</button>
				</div>
				<hr>
	<main style="    padding-right: 100px; padding-left: 125px;" id="main">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
				</div>
				<div align="center">
					<table style="width: 100%;">
						<tr align="center">
							<th style="width: 5%; height: 1px">번호</th>
							<th align="left" colspan="3" style="width: 40%;">공고제목</th>
							<th style="width: 15%;">모집부분</th>
							<th style="width: 10%;">근무형태</th>
							<th style="width: 20%;">지원자격</th>
							<th style="width: 15%;">지원자</th>
						</tr>
						<c:forEach var="rlist" items="${rlists}">
							<tr align="center">
								<td><a
									href="${pageContext.request.contextPath}
								/Recruitupdate.do?recruit_seq=${rlist.recruit_seq}">${rlist.recruit_seq}</a></td>
								<td colspan="3">${rlist.title }</td>
								<td>${rlist.work }</td>
								<td>${rlist.emp_type }</td>
								<td>${rlist.qualify }</td>
								<td>
								<button style="    padding: 7px 7px 7px 7px;" class="get-started-btn ml-auto" id = "inf" name = "inf" onclick = "location.href='${pageContext.request.contextPath}/usersApply.do?recruit_seq=${rlist.recruit_seq}'">지원자 확인</button>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
	</main>
			<c:if test="${n==1}">
			<script type="text/javascript">
			   alert("공고 등록을 완료 하였습니다.");
			</script>
		</c:if>
		<c:if test="${b==1}">
			<script type="text/javascript">
			   alert("공고 수정을 완료 하였습니다.");
			</script>
		</c:if>
</body>
</html>