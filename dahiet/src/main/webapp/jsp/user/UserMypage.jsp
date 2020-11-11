<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .point {
    color: #fc0038;
    font-size: 12px;
    letter-spacing: -1px;
   }


table {
	width: 850px;
	border: 1px solid;
}

td {
	border: 1px solid;
}

th {
	border: 1px solid;
}
</style>

<script>
function Display() {
	var pw = document.frmInf;
	if(pw.pw.value == ""){
		alert("password를 입력해주세요.");
		pw.pw.focus();
		return false;
	}
}
</script>
</head>
<body>
	<div align="center">
		<div id="tab1">
			<h1>회원정보수정</h1>
			<br>
			<form id="frmInf" name="frmInf"
				action="${pageContext.request.contextPath}/UpdateUserInf.do"
				method="post">
				<table>
					<tr>
						<td rowspan="6" align="center" width="20%"><img alt="사진"
							src="${pageContext.request.contextPath}/images/${vo.image}"
							width="120" height="150" align="middle">
							<input class="signin" type="file" id="image" name="image_file" >
							<input type="hidden" value="${vo.image}" id="image" name="image"></td>
						<td colspan="3" align="center">개인정보</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;아이디</td>
						<td>&nbsp;&nbsp;${vo.id}</td>
					</tr>
					<tr>
						<td><span class="point">&nbsp;*</span>비밀번호</td>
						<td><input type="text" id="pw" name="pw" placeholder="비밀번호를 재입력하시오"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;이름</td>
						<td>&nbsp;&nbsp;${vo.name}</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;생년월일</td>
						<td>&nbsp;&nbsp;${vo.birth}</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;이메일</td>
						<td><input type="text" value="${vo.email}" id="email"
							name="email"></td>
					</tr>

					<tr>
						<td>&nbsp;&nbsp;주소</td>
						<td colspan="3"><input type="text" value="${vo.addr}"
							id="addr" name="addr" style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;최종학력</td>
						<td colspan="3"><input type="text" value="${vo.univ}"
							id="univ" name="univ" style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;전공</td>
						<td colspan="3"><input type="text" value="${vo.major}"
							id="major" name="major" style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;평점평균</td>
						<td colspan="3"><input type="text" value="${vo.score}"
							id="score" name="score" style="width: 100%"></td>
					</tr>
				</table>
						<div align="center">
							<input type="submit" onclick="return Display()" value="회원정보수정">
							<input type="reset" value="취 소">
						</div>
			</form>
		</div>
		
		<c:if test="${n==1}">
			<script type="text/javascript">
			   alert("수정을 완료 하였습니다.");
			</script>
		</c:if>
		
		
		
		<%--tab1마지막 --%>
	</div>
</body>
</html>