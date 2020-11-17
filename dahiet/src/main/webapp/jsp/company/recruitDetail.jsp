<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

select.selectpicker {
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-webkit-font-smoothing: antialiased;
	box-sizing: border-box;
	margin: 0;
	font: inherit;
	overflow: visible;
	text-transform: none;
	font-family: inherit;
	display: inline-block;
	padding: 6px 12px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #333;
	background-color: #fff;
	border-color: #ccc;
	position: relative;
	width: 30%;
	padding-right: 25px;
	margin-left: 0;
}
</style>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h2>채용 공고 상세 페이지</h2>
			<p>
				<c:if test="${sessionScope.id ne null}">
					<form style="width: 500px"
						action="${pageContext.request.contextPath}/resumeApply.do">
						<button type="button"
							onclick="location.href ='${pageContext.request.contextPath}/SearchAction.do'"
							class="btn btn-sm btn-danger">공고목록</button>
						<input name="recruit_seq" type="hidden" value="${param.no}">
						<select class="selectpicker" name="resume_seq" id="resume">
							<c:forEach var="reseq" items="${rrlists}">
								<option value="${reseq.resume_seq}">${reseq.resume_name}
							</c:forEach>
						</select>
						<c:if test="${n == 1}">
							<script>
								alert("이력서 전달 완료")
								history.go(-1)
							</script>
						</c:if>
						<c:if test="${n == 0}">
							<script>
								alert("전달 실패")
								history.go(-1)
							</script>
						</c:if>
						<button class="btn btn-sm btn-danger">지원하기</button>
					</form>
				</c:if>
		</div>



		<hr />
		<main id="main">
			<div style="margin: 20%, 10%, 20%, 10%" align="center">
				<table border="1" style="text-align: center;">
					<tr>
						<td colspan="2" rowspan="7"><img style="margin: 0px;"
							alt="회사로고"
							src="${pageContext.request.contextPath}/images/${vo.img}"></td>
						<th width="800px" colspan="6" rowspan="2" style="font-size: 35px">${vo.title}</th>
					</tr>
					<tr />
					<tr>
						<th class="title">회사이름</th>
						<td>${vo.name}</td>
						<th class="title">근무형태</th>
						<td>${vo.emp_type}</td>
					</tr>
					<tr>
						<th class="title">업종</th>
						<td>${vo.item}</td>
						<th class="title">회사위치</th>
						<td>${vo.loc}</td>
					</tr>
					<tr>
						<th class="title">사원수</th>
						<td>${vo.emps}</td>
						<th class="title">기업형태</th>
						<td>${vo.type}</td>
					</tr>
					<tr>
						<th class="title">담당업무</th>
						<td>${vo.work}</td>
						<th class="title">매출액</th>
						<td colspan="3">${vo.profit}</td>
					</tr>
					<tr>
						<th class="title">회사홈페이지</th>
						<td colspan="5"><a href="${vo.link}">${vo.link}</a></td>
					</tr>
					<tr>
						<td colspan="8"> <textarea rows="20" cols="120" readonly="readonly">${vo.qualify}</textarea> </td>

					</tr>
				</table>
			</div>
		</main>
	</div>
</body>
</html>