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

	function setDisplay2(value) {
		if (value == '3') {
			tab3.style.display = '';
			tab4.style.display = 'none';
		} else {
			tab4.style.display = '';
			tab3.style.display = 'none';

		}
	};
</script>

<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col" align="center">
			<h1>로그인</h1>
			<form>
				<input type="radio" id="user" name="login" value="3"
					onchange="setDisplay2(this.value);" checked>개인회원 <input
					type="radio" id="company" name="login" value="4"
					onchange="setDisplay2(this.value)">기업회원
			</form>
			<div id="tab3">
				<form method="post" id="authForm"
					action="${pageContext.request.contextPath}/userLogin.do">

					<div>
						<div>
							<label>아이디</label> <input type="text" id="id" name="id"
								placeholder="ID">
						</div>
						<div class="inp_text">
							<label>비밀번호</label> <input type="password" id="pw" name="pw"
								placeholder="Password">
						</div>
					</div>
					<button type="submit">로그인</button>
					<div>
						<div>
							<!-- 체크시 checked 추가 -->
							<input type="checkbox" id="keepLogin" name="keepLogin"> <label
								for="keepLogin"> <span>로그인 상태 유지</span>
							</label>
						</div>
						<span> <a href="#">아이디</a> / <a
							href="/member/find/password">비밀번호 찾기</a>
						</span>
					</div>
				</form>
			</div>
			
			
			<div id="tab4" style="display: none">

				<form method="post" id="authForm"
					action="${pageContext.request.contextPath}/companyLogin.do">

					<div>
						<div>
							<label>아이디</label> <input type="text" id="id" name="id"
								placeholder="사업자번호">
						</div>
						<div>
							<label>비밀번호</label> <input type="password" id="pw" name="pw"
								placeholder="Password">
						</div>
					</div>
					<button type="submit">로그인</button>
					<div>
						<div>
							<!-- 체크시 checked 추가 -->
							<input type="checkbox" id="keepLogin" name="keepLogin"> <label
								for="keepLogin"> <span>로그인
									상태 유지</span>
							</label>
						</div>
						<span> <a href="#">아이디</a> / <a href="#">비밀번호 찾기</a>
						</span>
					</div>

				</form>
			</div>
		</div>
		<div align="center">
			<div>
				<h1>회 원 가 입</h1>
			</div>
			<div>
				<form>
					<input type="radio" id="user" name="login" value="1"
						onchange="setDisplay(this.value);" checked>개인회원 <input
						type="radio" id="company" name="login" value="2"
						onchange="setDisplay(this.value)">기업회원
				</form>
				<div id="tab1">

					<form id="frm1" name="frm1"
						action="${pageContext.request.contextPath}/userInsert.do"
						method="post" enctype="multipart/form-data">
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
					<form id="frm2" name="frm2"
						action="${pageContext.request.contextPath}/comInsert.do"
						method="post" enctype="multipart/form-data">
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
								<th width="150">회사이름</th>
								<td><input type="text" id="name" name="name"></td>
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
	</div>
</body>
</html>