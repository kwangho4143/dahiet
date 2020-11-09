<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
</head>
<body>
	<div align="center">
		<div id="tab1">
			<h1>회원정보수정</h1>
			<br>
			<form id = "frmInf" name = "frmInf" action ="${pageContext.request.contextPath}/updateUserInf.do" method= "post">
			<table>
				<tr>
					<td rowspan="6" align="center" width="20%"><img alt="사진"
						src="${pageContext.request.contextPath}/images/${imag}"
						width="120" height="150" align="middle"></td>
					<td colspan="3" align="center">개인정보</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;아이디</td>
					<td>&nbsp;&nbsp;${id}</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;비밀번호</td>
					<td><input type="text" id="pw" name="pw">&nbsp;&nbsp;
						</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;이름</td>
					<td>&nbsp;&nbsp;${name}</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;생년월일</td>
					<td>&nbsp;&nbsp;${birth}</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;이메일</td>
					<td><input type="text" value="${email}" id="email"
						name="email">
						</td>
				</tr>

				<tr>
					<td>&nbsp;&nbsp;주소</td>
					<td colspan="3"><input type="text" value="${addr}" id="addr"
						name="addr" style="width: 100%">
				</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;전화번호</td>
					<td colspan="3"><input type="text" value="${tel}" id="tel"
						name="tel" style="width: 100%">
						</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;최종학력</td>
					<td colspan="3"><input type="text" value="${univ}" id="univ"
						name="univ" style="width: 100%">
					</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;전공</td>
					<td colspan="3"><input type="text" value="${major}" id="major"
						name="major" style="width: 100%">
						</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;평점평균</td>
					<td colspan="3"><input type="text" value="${score}" id="score"
						name="score" style="width: 100%">
					</td>
				</tr>
				<tr>
					<td  align="center"><input type="submit" value="회원정보수정"> &nbsp;&nbsp; <input type="reset" value="취 소"></td>
				
				</tr>
			</table>
			</form>
		</div>
		<%--tab1마지막 --%>
	</div>
</body>
</html>