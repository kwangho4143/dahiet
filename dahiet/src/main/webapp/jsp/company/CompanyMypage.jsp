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
<script>
	function Display() {
		var d = document.tap1;
		if (d.pw.value == "") {
			alert("password를 입력하세요.");
			d.pw.focus();
			return false;

		}
	};
</script>
</head>
<body>
	<div align="center">
		<div
			style="padding-left: 130px; background-color: #f8f9fa; height: 70px"
			class="d-flex justify-content-between align-items-center">
			<h2>기업정보수정</h2>
		</div>
		<hr>
		<div id="tab1">
			<form id="frmInf" name="frmInf"
				action="${pageContext.request.contextPath}/UpdateComInf.do"
				method="post" enctype="multipart/form-data">
				<table>
					<tr>
						<td rowspan="6" align="center" width="20%"><img
							style="width: 100%" alt="사진"
							src="${pageContext.request.contextPath}/images/${vo.img}"
							width="120" height="150" align="middle"> <input
							class="signin" type="file" id="img" name="img_file"
							value="${vo.img}"> <input type="hidden"
							value="${vo.img }" id="img" name="img"></td>
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
						<td colspan="3"><label><input type="radio"
								name="type" value="c1"
								<c:if test="${vo.type eq 'c1'}">checked</c:if>> 대기업</label> <label><input
								type="radio" name="type" value="c2"
								<c:if test="${vo.type eq 'c2'}">checked</c:if>> 중견기업</label> <label><input
								type="radio" name="type" value="c3"
								<c:if test="${vo.type eq 'c3'}">checked</c:if>> 중소기업</label> <label><input
								type="radio" name="type" value="c4"
								<c:if test="${vo.type eq 'c4'}">checked</c:if>> 외국계</label> <label><input
								type="radio" name="type" value="c5"
								<c:if test="${vo.type eq 'c5'}">checked</c:if>> 강소기업</label> <label><input
								type="radio" name="type" value="c6"
								<c:if test="${vo.type eq 'c6'}">checked</c:if>> 공기업</label></td>
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

						<td colspan="3"><c:forEach var="itemcode"
								items="${itemcodes}">
								<label><input type="radio" name="item"
									value="${itemcode.itemid }" <c:if test="${itemcode.itemid eq vo.item}">checked</c:if>>${itemcode.itemname}</label>

							</c:forEach></td>
					</tr>
					<tr>
						<td align="right" colspan="4"><input
							class="btn btn-xs btn-danger" type="submit" value="회원정보수정"
							onclick="return Display()"> <input
							class="btn btn-xs btn-danger" type="reset" value="취 소"></td>
					</tr>
				</table>
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