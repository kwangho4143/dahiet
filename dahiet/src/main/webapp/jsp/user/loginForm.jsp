<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<script>
	function setDisplay(value) {
		if (value == '1') {
			tab1.style.display = '';
			tab2.style.display = 'none';
		} else {
			tab2.style.display = '';
			tab1.style.display = 'none';

		}
	};
</script>


<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>회 원 가 입</h1>
		</div>
		<div>
			<form>
				<input type="radio" id="user" name="login" value="1"
					onchange="setDisplay(this.value);" checked>개인회원 
					<input
					type="radio" id="company" name="login" value="2"
					onchange="setDisplay(this.value)">기업회원
			</form>
			<div id="tab1">
				<form id="frm1" name="frm1" action="${pageContext.request.contextPath}/userInsert.do" method="post"
					enctype="multipart/form-data">
					<table border="1">
						<tr>
							<th width="150">아이디</th>
							<td width="500"><input type="text" id="id" name="id"></td>
						</tr>
						<tr>
							<th width="150">패스워드</th>
							<td><input type="text" id="pw" name="pw"></td>
						</tr>
						<tr>
							<th width="150">이 름</th>
							<td><input type="text" id="name" name="name"></td>
						</tr>
						<tr>
							<th width="150">사 진</th>
							<td><input type="file" id="image" name="image"></td>
						</tr>
						<tr>
							<th width="150">생 일</th>
							<td><input type="date" id="birth" name="birth"></td>
						</tr>
						<tr>
							<th width="150">이메일</th>
							<td><input type="text" id="email" name="email"></td>
						</tr>
						<tr>
							<th width="150">전화번호</th>
							<td><input type="text" id="tel" name="tel"></td>
						</tr>
						<tr>
							<th width="150">주 소</th>
							<td><input type="text" id="addr" name="addr" size="80"></td>
						</tr>
						<tr>
							<th width="150">최종학력</th>
							<td><input type="text" id="univ" name="univ"></td>
						</tr>
						<tr>
							<th width="150">전 공</th>
							<td><input type="text" id="major" name="major"></td>
						</tr>
						<tr>
							<th width="150">학 점</th>
							<td><input type="text" id="score" name="score"></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="가입하기"> &nbsp;&nbsp; <input type="reset"
								value="취 소"></td>
						</tr>
					</table>
				</form>
			</div>
			<div id="tab2" style="display: none">
				<form id="frm2" name="frm2" action="${pageContext.request.contextPath}/comInsert.do" method="post"
					enctype="multipart/form-data">
					<table border="1">
						<tr>
							<th width="150">아이디</th>
							<td width="500"><input type="text" id="id" name="id"></td>
						</tr>
						<tr>
							<th width="150">패스워드</th>
							<td><input type="text" id="pw" name="pw"></td>
						</tr>
						<tr>
							<th width="150">사업자 번호</th>
							<td><input type="text" id="no" name="no"></td>
						</tr>
						<tr>
							<th width="150">이메일</th>
							<td><input type="text" id="email" name="email"></td>
						</tr>
						<tr>
							<th width="150">전화번호</th>
							<td><input type="text" id="tel" name="tel"></td>
						</tr>
						<tr>
							<th width="150">주 소</th>
							<td><input type="text" id="addr" name="addr" size="80"></td>
						</tr>
						<tr>
							<th width="150">로 고</th>
							<td><input type="file" id="img" name="img" size="80"></td>
						</tr>
						<tr>
							<th width="150">회사링크</th>
							<td><input type="text" id="link" name="link" size="80"></td>
						</tr>
						<tr>
							<th width="150">기업형태</th>
							<td><input type="text" id="type" name="type" size="80"></td>
						</tr>
						<tr>
							<th width="150">사원수</th>
							<td><input type="text" id="emps" name="emps" size="80"></td>
						</tr>
						<tr>
							<th width="150">매출액</th>
							<td><input type="text" id="profit" name="profit" size="80"></td>
						</tr>
						<tr>
							<th width="150">업종</th>
							<td><input type="text" id="item" name="item" size="80"></td>
						</tr>
						
						
						
						
						
						
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="가입하기"> &nbsp;&nbsp; <input type="reset"
								value="취 소"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>