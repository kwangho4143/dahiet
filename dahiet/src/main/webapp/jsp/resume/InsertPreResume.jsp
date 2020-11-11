<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertResume.jsp</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">
	table {
	  width: 850px;
	  border: 1px solid lightgrey;
	}
	td {
	  padding: 10px;
	  border: 1px solid lightgrey;
	}
	 th { 
	  padding: 10px;
	  border: 1px solid lightgrey;
	}
	.point {
    color: #fc0038;
    font-size: 12px;
    letter-spacing: -1px;
}
</style>

</head>


<body>

	<div align="center">
	
		<div>
			<h1>이 력 서 작 성</h1>
		</div> <br />
		<div>
			<div id="resumeTbl">
				<form id="resumeFrm" name="resumeFrm" action="${pageContext.request.contextPath}/resumeInsert.do" method="post">
		
					<div>
						<table>
							<tr>
								<td height="70" colspan="5"><h3 align="center">기 본 정 보</h3></td>
							</tr>
							<tr height="50">
								<th width="150">이력서 제목<span class="point">&nbsp;&nbsp;&nbsp;*</span></th>
								<td colspan="4"><input type="text" id="resume_name" name="resume_name" size="80"></td>
							</tr>
							<c:forEach items="${list}" var="vo">
							<tr height="50">
								<td rowspan="3"><img alt="사진" src="${pageContext.request.contextPath}/images/${vo.imag}" width="120" height="150" align="middle"></td>
								<th width="120">이 름</th>
								<td>${vo.name}</td>
								<th width="120">생년월일</th>
								<td>${vo.birth}</td>
							</tr>
							<tr height="50">
								<th width="120">이메일</th>
								<td>${vo.email}</td>
								<th width="120">휴대폰</th>
								<td>${vo.tel}</td>
							</tr>
							<tr height="50">
								<th width="150">주소</th>
								<td colspan="3">${vo.addr}</td>
							</tr>
							<tr height="50">
								<th width="150">최종학력</th>
								<td colspan="4">${vo.univ}</td>
							</tr>
							<tr>
								<th width="120">전공</th>
								<td colspan="2">${vo.major}</td>
								<th width="120">졸업학점</th>
								<td>${vo.score}</td>
							</tr>
							</c:forEach>
						</table><br/><br/>
					</div>
					
					<div>
					<input type="submit" class="btn btn-danger" value="이력서 작성하기" >&nbsp;&nbsp;
					<input type="reset" class="btn btn-danger" value= "취소">
					</div>
					
				</form>
			</div>
		</div>
	</div>

</body>
</html>