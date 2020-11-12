<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.faq-container {
	position: relative;
	height: 500px;
	padding-left: 210px;
	overflow-x: hidden;
	overflow-y: auto;
}

.faq-container .menuWrap {
	position: absolute;
	top: 0;
	left: 0;
	width: 210px;
	height: 500px;
	border-right: 1px solid #cdd0d4;
	box-sizing: border-box;
	background: #f8f9fa;
}

.faq-container .listWrap {
	overflow-y: auto;
	overflow-x: hidden;
	width: 690px;
	height: 713px;
}

.faq-container .listWrap .inner {
	width: 630px;
	min-height: 651px;
	padding: 30px 0 50px 30px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.faq-container .listWrap {
	overflow-y: auto;
	overflow-x: hidden;
	width: 690px;
	height: 713px;
}

.faq-container .listWrap .inner .list {
	font-size: 12px;
	font-family: gulim, "\AD74\B9BC", dotum, "\B3CB\C6C0", arial, sans-serif;
	color: #434a54;
	padding: 0;
	margin: 0;
}

.faq-container .listWrap .inner .pagenation {
	font-size: 12px;
	font-family: gulim, "\AD74\B9BC", dotum, "\B3CB\C6C0", arial, sans-serif;
	color: #434a54;
	clear: both;
	position: relative;
	text-align: center;
	width: 500px;
	padding: 20px 0;
	margin: 0 auto;
}

.faq-container .listWrap .inner .tbFaq .onA .answer {
	font-family: gulim, "\AD74\B9BC", dotum, "\B3CB\C6C0", arial, sans-serif;
	color: #434a54;
	border-collapse: collapse;
	border-spacing: 0;
	empty-cells: show;
	font-size: 12px;
	margin: 0;
	padding: 18px 25px;
	background: #f5f6f7;
	line-height: 18px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: block;
	position: relative;
	min-width: 100px;
	z-index: 1;
	font-size: 80%
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1;
}
</style>

<script type="text/javascript">
		var DS_UID_Value = "";
		var DSID_Value = "";
		
		if (window._dslog) {
			if (DS_UID_Value!="" && DSID_Value!="") {
				window._dslog.setDSID(DSID_Value);
			} else {
				window._dslog.setUID(DS_UID_Value);
			}
			window._dslog.dispatch();
		}else{
			var dslog_tag = document.getElementById("dslog_tag");
			if (dslog_tag != null && dslog_tag != undefined)
        	{
        		dslog_tag.onload = dslog_tag.onreadystatechange = function()
				{
					dslog_tag.onload = dslog_tag.onreadystatechange = null;
					window._dslog.setUIDCookie(DS_UID_Value);
					window._dslog.dispatch();
				}
        	}
		}
	</script>

<script>
$(document).ready(function() {
	var _qno = "";
	var _qidx = "";
	if (_qno!="" && _qidx!="") {
		show_content(_qno, _qidx);
	}

	function show_content(qno,qidx) {
		for (var i=0; i <= 5; i++) {
			if ($(eval("viewcontent_" + i))) {
				if (qno == i) {
					if ($(eval("viewcontent_" + i)).css('display') == "none") {
						$(eval("viewcontent_" + qno)).attr("style", "display:;"); // 내용보임
						$(eval("question_" + qno)).attr("class", "onQ");
						$(eval("arrow_" + qno)).attr("src", "https://contents.albamon.kr/monimg/customer/faq/icon_arrow_close.gif");
						$(eval("arrow_" + qno)).attr("alt", "내용닫기");
	
						//조회수
						$("#ifmRead").attr("src", "/customer/mon_faq_list_process.asp?qidx=" + qidx);
					}
					else
					{
						$(eval("viewcontent_" + qno)).attr("style", "display:none;");
						$(eval("question_" + qno)).attr("class", "offQ");
						$(eval("arrow_" + qno)).attr("src", "https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif");
						$(eval("arrow_" + qno)).attr("alt", "내용열기");
					}
				}
				else {
					$(eval("viewcontent_" + i)).attr("style", "display:none;");
					$(eval("question_" + i)).attr("class", "offQ");
					$(eval("arrow_" + i)).attr("src", "https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif");
					$(eval("arrow_" + i)).attr("alt", "내용열기");
				}
			}
		}
	}
})

</script>
</head>
<body>
	<div class="faq-container">
		<div class="menuWrap">
			<div>
				<ul>
					<li class="dropdown"><a href="javascript:void(0)"
						class="dropbtn"><img
							src="${pageContext.request.contextPath}/images/tab_gg.png"
							alt="개인"></a>
						<div class="dropdown-content">
							<a href="#">회원가입</a> <a href="#">회원정보관리</a> <a href="#">이력서관리</a>
							<a href="#">공고검색</a> <a href="#">기타문의</a>
						</div></li>
					<li class="dropdown"><a href="javascript:void(0)"
						class="dropbtn"><img
							src="${pageContext.request.contextPath}/images/tab_gi.png"
							alt="기업회원"></a>
						<div class="dropdown-content">
							<a href="#">회원가입</a> <a href="#">기업정보관리</a> <a href="#">공고등록관리</a>
							<a href="#">이력서열람</a> <a href="#">기타문의</a>
						</div></li>
				</ul>
			</div>
			<br>
			<div>
				<ul class="bnr">
					<li><img
						src="${pageContext.request.contextPath}/images/call1.png"
						alt="고객센터 1588-9351 / 평일 09:00 ~ 19:00, 토요일 09:00~15:00" /></li>
				</ul>
			</div>
		</div>
		<div class="listWrap">
			<div class="inner">
				<div class="list">
					<table summary="FAQ 리스트" class="tbFaq">
						<colgroup>
							<col width="25">
							<col width="*">
							<col width="40">
						</colgroup>
						<tbody>

							<tr class="offQ" id="question_0">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(0,1);">회원가입은 무료인가요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(0,1);"><img
										id="arrow_0"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_0" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										알바몬 회원가입은 무료입니다.<br> <br> 회원가입 방법으로는 `알바몬 아이디 만들기`와
										`소셜 로그인` 중 선택하실 수 있습니다.<br> <br> <b>알바몬 아이디 만들기</b><br>
										아이디, 비밀번호, 이메일 주소 등 간단한 개인정보를 입력하고 휴대폰 번호인증을 완료하면 바로 회원가입이 되어
										알바몬의 개인회원 서비스를 이용하실 수 있습니다.<br> <br> <b>소셜 로그인으로
											가입</b><br> 네이버/카카오/페이스북/구글로 로그인 → 서비스 권한 요청 동의 → 알바몬 시작 및 약관
										동의 → 회원가입 완료<br> <br> * 가입 시 작성한 정보를 수정은 로그인 후 개인서비스
										&gt; 회원정보 관리 메뉴에서 하실 수 있습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_1">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(1,3);">잡코리아 아이디가 있는데 알바몬에서 사용할 수 있나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(1,3);"><img
										id="arrow_1"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_1" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										네. 잡코리아에서 이미 회원가입을 하셨다면 알바몬에서 같은 아이디로 로그인 해서 사용하실 수 있습니다.<br>
										반대로, 알바몬에서 회원가입 하신 경우에도 잡코리아에서 같은 아이디로 로그인이 됩니다.<br>
										알바몬/잡코리아 회원가입 페이지를 보시면 "양쪽 사이트에서 모두 회원가입 된다"라는 내용이 명시되어 있습니다.
										(단 소셜 로그인으로 가입한 경우는 예외) <br> <br> 이력서의 경우, 잡코리아에서
										등록하신 이력서와 알바몬 이력서는 다른 형식이므로(아르바이트 지원 용 이력서임.)<br> 알바몬에서는
										별도로 이력서를 등록하셔야 합니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_2">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(2,28);">회원탈퇴는 어디에서 하나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(2,28);"><img
										id="arrow_2"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_2" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										회원탈퇴는 <u>회원 로그인 &gt; 개인서비스 &gt; 회원정보 관리</u> 페이지의 회원탈퇴 메뉴에서
										신청하실 수 있습니다.<br> <br> 탈퇴 시 주의사항을 반드시 읽어보신 후 탈퇴를 위한
										정보를 모두 입력하면 탈퇴신청 및 처리가 완료됩니다.<br> <br> 탈퇴 후에는 그동안
										이용하셨던 아이디가 삭제되어 로그인이 불가능하며 재가입 시에도 동일 아이디를 사용하실 수 없습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_3">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(3,29);">개인회원으로는 채용공고를 등록할 수 없나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(3,29);"><img
										id="arrow_3"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_3" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										기본적으로 채용공고 등록/관리는 기업회원님께 제공하는 서비스입니다.<br> <br>
										기업회원으로 가입/로그인 후 공고등록 이용을 부탁 드립니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_4">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(4,96);">알바몬에서 회원탈퇴 하면 잡코리아도 사용할 수 없게
										되나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(4,96);"><img
										id="arrow_4"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_4" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										네. 알바몬에서 회원탈퇴를 하시면 잡코리아에서도 동시에 회원탈퇴가 됩니다.<br> <br>
										회원가입 시 두 사이트에 동시 가입되는 통합 회원가입으로 같은 회원정보로 관리되고 있어, 회원탈퇴 역시 알바몬
										사이트에서 탈퇴하게 되면 잡코리아에서도 함께 탈퇴가 됩니다. (단 소셜 로그인으로 가입한 경우는 예외) <br>
										<br> 이 점 유의하셔서 탈퇴하시기 전에 신중히 고려하시기 바랍니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_5">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(5,97);">미성년자는 회원가입이 안 되나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(5,97);"><img
										id="arrow_5"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_5" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										주민등록 상의 연령이 만 15세 미만인 경우, “근로기준법 제 64조” 내용에 근거하여<br> 취업이
										불가능하므로 구인구직을 목적으로 하는 알바몬에 회원가입 하실 수 없습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_6">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(6,274);">네이버 로그인, 카카오 로그인 등 소셜 로그인으로
										알바몬에 가입하는 방법이 궁금합니다.</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(6,274);"><img id="arrow_6"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_6" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										평소 사용하는 소셜서비스 계정으로 쉽고 편하게 알바몬에 가입할 수 있습니다.<br> <br>
										1. 회원가입 또는 로그인 화면에서 [네이버 로그인], [카카오 로그인], [페이스북 로그인], [구글 로그인]
										중 하나를 선택하세요.<br> 2. 선택한 소셜서비스의 로그인 화면에서 계정 정보를 입력해 로그인
										하세요.<br> 3. 각 서비스의 계정 정보 수집/이용에 대한 동의를 진행하세요.<br> 4.
										알바몬 서비스 이용약관 및 개인정보처리방침 동의를 진행하세요.<br> 5. 선택한 소셜서비스 계정으로
										알바몬 가입이 완료됩니다.<br> <br> 알바몬 이용 시, 선택했던 소셜서비스 계정으로
										로그인이 가능합니다.<br>
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_7">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(7,276);">소셜 로그인으로 알바몬을 이용중 입니다. 만약
										연동한 소셜서비스를 탈퇴하면 어떻게 되나요?</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(7,276);"><img id="arrow_7"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_7" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										소셜 로그인은 회원님의 아이디 정보가 정확한지 연동한 소셜서비스에 확인 후, 해당 아이디로 알바몬 서비스를
										이용하실 수 있도록 되어 있습니다. <br> <br> 그렇기 때문에 연동한 소셜서비스를
										탈퇴하시면 더이상 알바몬을 이용하실 수 없습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_8">
								<td class="mark">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(8,277);">소셜 로그인으로 알바몬을 이용하고 있는데 알바몬을
										탈퇴하면 어떻게 되나요?</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(8,277);"><img id="arrow_8"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_8" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										알바몬 탈퇴 시, 소셜서비스 계정으로 알바몬을 이용했던 이력서, 지원내역 등 모든 정보가 삭제됩니다. <br>
										<br> 같은 소셜서비스 계정으로 다시 알바몬에 가입하면, 탈퇴 이전에 저장한 정보들을 더 이상 확인
										하실 수 없고 신규로 가입됩니다.
									</div>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
				<div class="pagenation">
					<ul>
						<li><em>1</em></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>