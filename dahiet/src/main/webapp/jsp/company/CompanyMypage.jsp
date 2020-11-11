<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</head>
<body>
	<div align="center">
		<div id="tab1">
			<h1>기업정보수정</h1>
			<br>
			<form id="frmInf" name="frmInf"
				action="${pageContext.request.contextPath}/UpdateComInf.do"
				method="post">
				<table>
					<tr>
						<td rowspan="6" align="center" width="20%"><img alt="사진"
							src="${pageContext.request.contextPath}/images/${vo.img}"
							width="120" height="150" align="middle"></td>
						<td colspan="3" align="center">기업정보</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;아이디</td>
						<td>&nbsp;&nbsp;${vo.id}</td>
					</tr>
					<tr>
						<td><span class="point">&nbsp;*</span>비밀번호</td>
						<td><input type="text" id="pw" name="pw"
							placeholder="비밀번호를 재입력하시오"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;이름</td>
						<td>&nbsp;&nbsp;${vo.name}</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;전화번호</td>
						<td><input type="text" value="${vo.tel}" id="tel" name="tel"
							style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;주소</td>
						<td><input type="text" value="${vo.addr}" id="addr"
							name="addr" style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;링크</td>
						<td colspan="3"><input type="text" value="${vo.link}"
							id="link" name="link" style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;기업형태</td>
						<td colspan="3"><input type="text" value="${vo.type}"
							id="type" name="type" style="width: 100%"></td>
					</tr>

					<tr>
						<td>&nbsp;&nbsp;사원수</td>
						<td colspan="3"><input type="text" value="${vo.emps}"
							id="emps" name="emps" style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;매출액</td>
						<td colspan="3"><input type="text" value="${vo.profit}"
							id="profit" name="profit" style="width: 100%"></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;업종</td>
						<td colspan="3"><input type="text" value="${vo.item}"
							id="item" name="item" style="width: 100%"></td>
					</tr>
				</table>
				<div align="center">
					<input type="submit" value="회원정보수정"> <input type="reset"
						value="취 소">
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