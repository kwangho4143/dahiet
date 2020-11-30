<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		userIdCheck();
		comIdCheck();

	});

	function userIdCheck() {
		$('#idcheck').on('click', function() {

			$.ajax({
				url : '${pageContext.request.contextPath}/ajax/userIdCheck.do',
				data : $("#frm1").serialize(),
				error : function(xhr, status, msg) {
					//console.log("상태값 :" + status + " Http에러메시지 :"+msg);
					console.log("아작스 에러");
				},
				success : function(ms) {
					alert(ms);

				}
			});

		});
	}

	function comIdCheck() {
		$('#idcheck2').on('click', function() {

			$.ajax({
				url : '${pageContext.request.contextPath}/ajax/comIdCheck.do',
				data : $("#frm2").serialize(),
				error : function(xhr, status, msg) {
					//console.log("상태값 :" + status + " Http에러메시지 :"+msg);
					console.log("아작스 에러");
				},
				success : function(ms) {
					alert(ms);

				}
			});

		});
	}

	function formCheck1() {
		var f = document.frm1;

		if (f.id.value == "") {
			alert("아이디를 입력하세요.");
			f.id.focus();
			return false;
		}
		if (f.pw.value == "") {
			alert("패스워드를 입력하세요.");
			f.pw.focus();
			return false;
		}
		if (f.name.value == "") {
			alert("이름을 입력하세요.");
			f.name.focus();
			return false;
		}
		if (f.image.value == "") {
			alert("이미지를 첨부하세요.");
			f.image.focus();
			return false;
		}
		if (f.birth.value == "") {
			alert("생일을 입력하세요.");
			f.birth.focus();
			return false;
		}
		if (f.email.value == "") {
			alert("이메일을 입력하세요.");
			f.email.focus();
			return false;
		}
		if (f.tel.value == "") {
			alert("전화번호를 입력하세요.");
			f.tel.focus();
			return false;
		}
		if (f.addr.value == "") {
			alert("주소를 입력하세요.");
			f.addr.focus();
			return false;
		}
		if (f.univ.value == "") {
			alert("최종학력을 입력하세요.");
			f.univ.focus();
			return false;
		}
		if (f.major.value == "") {
			alert("전공을 입력하세요.");
			f.major.focus();
			return false;
		}
		if (f.score.value == "") {
			alert("학점을 입력하세요.");
			f.score.focus();
			return false;
		}

	};

	function formCheck2() {
		var f = document.frm2;

		if (f.id.value == "") {
			alert("아이디를 입력하세요.");
			f.id.focus();
			return false;
		}
		if (f.pw.value == "") {
			alert("패스워드를 입력하세요.");
			f.pw.focus();
			return false;
		}
		if (f.no.value == "") {
			alert("사업자번호를 입력하세요.");
			f.no.focus();
			return false;
		}
		if (f.name.value == "") {
			alert("기업이름을 입력하세요.");
			f.name.focus();
			return false;
		}
		if (f.tel.value == "") {
			alert("전화번호를 입력하세요.");
			f.tel.focus();
			return false;
		}
		if (f.addr.value == "") {
			alert("주소를 입력하세요.");
			f.addr.focus();
			return false;
		}
		if (f.img.value == "") {
			alert("이미지를 첨부하세요.");
			f.img.focus();
			return false;
		}
		if (f.link.value == "") {
			alert("기업링크를 입력하세요.");
			f.link.focus();
			return false;
		}
		if (f.type.value == "") {
			alert("기업형태를 입력하세요.");
			f.type.focus();
			return false;
		}
		if (f.emps.value == "") {
			alert("사원 수를 입력하세요.");
			f.emps.focus();
			return false;
		}
		if (f.profit.value == "") {
			alert("매출액을 입력하세요.");
			f.profit.focus();
			return false;
		}
		if (f.item.value == "") {
			alert("업종을 입력하세요.");
			f.item.focus();
			return false;
		}

	};

	function formCheck3() {
		var f = document.frm3;

		if (f.id.value == "") {
			alert("사용자 아이디를 입력하세요.");
			f.id.focus();
			return false;
		}
		if (f.pw.value == "") {
			alert("사용자 password를 입력하세요.");
			f.pw.focus();
			return false;
		}
	};

	function formCheck4() {
		var f = document.frm4;

		if (f.id.value == "") {
			alert("사용자 아이디를 입력하세요.");
			f.id.focus();
			return false;
		}
		if (f.pw.value == "") {
			alert("사용자 password를 입력하세요.");
			f.pw.focus();
			return false;
		}
	};

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
<style>
td {
	height: 1cm;
}

th.signin {
	width: 90px;
	text-align: center;
}

input.signin {
	width: 250px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div style="    min-height: 500px;" align="center">
		<table>
			<tr>
				<td>
					<div class="col" align="center">
						<h1>로그인</h1>
						<form>
							<input type="radio" id="user" name="login" value="3"
								onchange="setDisplay2(this.value);" checked>개인회원 <input
								type="radio" id="company" name="login" value="4"
								onchange="setDisplay2(this.value)">기업회원
						</form>

						<div id="tab3">
							<form method="post" id="frm3" name="frm3"
								action="${pageContext.request.contextPath}/userLogin.do">
								<div>
									<table>
										<tr>
											<td>아이디</td>
											<td><input type="text" id="id" name="id"
												placeholder="ID"></td>
										<tr>
											<td><label>비밀번호</label></td>
											<td><input type="password" id="pw" name="pw"
												placeholder="Password"></td>
										</tr>
									</table>
								</div>
								<button type="submit" onclick="return formCheck3()">로그인</button>
								<div>
									<div>
										<!-- 체크시 checked 추	가 -->
										<input type="checkbox" id="keepLogin" name="keepLogin">
										<label for="keepLogin"> <span>로그인 상태 유지</span>
										</label>
									</div>
									<span> <a href="">아이디</a> / <a
										href="/member/find/password">비밀번호 찾기</a>
									</span>
								</div>
							</form>
						</div>


						<div id="tab4" style="display: none">

							<form method="post" id="frm4" name="frm4"
								action="${pageContext.request.contextPath}/companyLogin.do">
								<div>
									<table>
										<tr>
											<td>아이디</td>
											<td><input type="text" id="id" name="id"
												placeholder="ID"></td>
										<tr>
											<td><label>비밀번호</label></td>
											<td><input type="password" id="pw" name="pw"
												placeholder="Password"></td>
										</tr>
									</table>
								</div>
								<button type="submit" onclick="return formCheck4()">로그인</button>
								<div>
									<div>
										<!-- 체크시 checked 추가 -->
										<input type="checkbox" id="keepLogin" name="keepLogin">
										<label for="keepLogin"> <span>로그인 상태 유지</span>
										</label>
									</div>
									<span> <a href="#">아이디</a> / <a href="#">비밀번호 찾기</a>
									</span>
								</div>
							</form>
						</div>
					</div>
				</td>
				<td style="padding-left: 20%"></td>
				<td>
					<div class="col" align="center">
						<h1>회 원 가 입</h1>
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
											<th class="signin">아이디</th>
											<td><input class="signin" type="text" id="id" name="id">
												<input type="button" id="idcheck" name="idcheck"
												value="중복 확인"></td>
											<th class="signin">패스워드</th>
											<td><input class="signin" type="password" id="pw"
												name="pw"></td>
										</tr>
										<tr>
											<th class="signin">이 름</th>
											<td><input class="signin" type="text" id="name"
												name="name"></td>
											<th class="signin">사 진</th>
											<td><input class="signin" type="file" id="image"
												name="image" style="width: 250px"></td>
										</tr>
										<tr>
											<th class="signin">생 일</th>
											<td><input class="signin" type="date" id="birth"
												name="birth"></td>
											<th class="signin">이메일</th>
											<td><input class="signin" type="text" id="email"
												name="email"></td>
										</tr>
										<tr>
											<th class="signin">전화번호</th>
											<td><input class="signin" type="text" id="tel"
												name="tel"></td>
											<th class="signin">최종학력</th>
											<td><input class="signin" type="text" id="univ"
												name="univ"></td>
										</tr>
										<tr>
											<th class="signin">전 공</th>
											<td><input class="signin" type="text" id="major"
												name="major"></td>
											<th class="signin">학 점</th>
											<td><input class="signin" type="text" id="score"
												name="score"></td>
										</tr>
										<tr>
											<th class="signin">주 소</th>
											<td colspan="3"><input style="width: 500px" type="text"
												id="addr" name="addr"></td>
										</tr>
										<tr>
											<td colspan="4" align="center"><input type="submit"
												onclick="return formCheck1()" value="가입하기">
												&nbsp;&nbsp; <input type="reset" value="취 소"></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
						<div id="tab2" style="display: none">
							<form id="frm2" name="frm2"
								action="${pageContext.request.contextPath}/comInsert.do"
								method="post" enctype="multipart/form-data">
								<table border="1">
									<tr>
										<th class="signin">아이디</th>
										<td><input class="signin" type="text" id="id" name="id">
											<input type="button" value="중복 확인" id="idcheck2"></td>
										<th class="signin">패스워드</th>
										<td><input class="signin" type="password" id="pw"
											name="pw"></td>
									</tr>
									<tr>
										<th class="signin">사업자 번호</th>
										<td><input class="signin" type="text" id="no" name="no"></td>
										<th class="signin">기업이름</th>
										<td><input class="signin" type="text" id="name"
											name="name"></td>
									</tr>
									<tr>
										<th class="signin">전화번호</th>
										<td><input class="signin" type="text" id="tel" name="tel"></td>
										<th class="signin">로 고</th>
										<td><input class="signin" type="file" id="img" name="img"></td>
									</tr>
									<tr>
										<th class="signin">주 소</th>
										<td colspan="3"><input type="text" id="addr" name="addr"
											size="68"></td>
									</tr>
									<tr>
										<th class="signin">기업링크</th>
										<td colspan="3"><input type="text" id="link" name="link"
											size="68"></td>
									</tr>
									<tr>
										<th class="signin">사원수</th>
										<td><input class="signin" type="text" id="emps"
											name="emps"></td>
										<th class="signin">매출액</th>
										<td><input class="signin" type="text" id="profit"
											name="profit"></td>
									</tr>
									<tr>
										<th class="signin">기업형태</th>
										<td colspan="3"><label><input type="radio"
												name="type" value="c1"> 대기업</label> <label><input
												type="radio" name="type" value="c2"> 중견기업</label> <label><input
												type="radio" name="type" value="c3"> 중소기업</label> <label><input
												type="radio" name="type" value="c4"> 외국계</label> <label><input
												type="radio" name="type" value="c5"> 강소기업</label> <label><input
												type="radio" name="type" value="c6"> 공기업</label>
									</tr>
									<tr>
										<th class="signin">업종</th>
										<td colspan="3"><label> <input type="radio"
												name="item" value="1"> 서비스업
										</label> <label><input type="radio" name="item" value="2">
												제조·화학</label> <label><input type="radio" name="item"
												value="3"> IT·웹·통신</label> <label><input
												type="radio" name="item" value="4"> 은행·금융업</label> <label><input
												type="radio" name="item" value="5"> 미디어·디자인</label> <br>
											<label><input type="radio" name="item" value="6">
												교육업</label> <label><input type="radio" name="item" value="7">
												의료·제약·복지</label> <label><input type="radio" name="item"
												value="8"> 판매·유통</label> <label><input type="radio"
												name="item" value="9"> 건설업</label> <label><input
												type="radio" name="item" value="10"> 기관·협회</label></td>
									</tr>
									<tr>
										<td colspan="4" align="center"><input type="submit"
											onclick="return formCheck2()" value="가입하기">
											&nbsp;&nbsp; <input type="reset" value="취 소"></td>
									</tr>
								</table>
							</form>
						</div>
					</div>

				</td>
			</tr>
		</table>
	</div>
</body>
</html>