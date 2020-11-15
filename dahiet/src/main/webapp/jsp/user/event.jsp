<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<style>
.faq-container {
	position: relative;
	width: 1000px;
	height: 500px;
	padding-left: 210px;
}

.faq-container .menuWrap {
    position: absolute;
    top: 0;
    left: 0;
    width: 310px;
    height: 530px;
    box-sizing: border-box;
    padding-top: 30px;
    padding-left: 170px;
}

.faq-container .menuWrap .table {
	margin-left: auto; 
	margin-right: auto;
	text-align: center;
}

.faq-container .listWrap {
    overflow-y: auto;
    overflow-x: hidden;
    width: 960px;
    height: 530px;
    padding-top: 30px;
    padding-left: 100px;
}

.faq-container .listWrap .inner {
	width: 760px;
	min-height: 500px;
	padding: 30px 0 50px 50px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.faq-container .listWrap .inner .list {
	font-size: 13px;
	font-family: gulim, "\AD74\B9BC", dotum, "\B3CB\C6C0", arial, sans-serif;
	color: #434a54;
	padding: 0;
	margin: 0;
}

.faq-container .listWrap .inner .tbFaq {
	width: 750px;
}

.faq-container .listWrap .inner .tbFaq .offQ {
	height: 35px;
	border-bottom: 1px solid lightgrey;
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

.faq_ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

.faq_li {
	float: left;
}

.mark1 {
	padding: .2em;
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
	$(document).ready(function()
	{
		var _qno = "";
		var _qidx = "";
		if (_qno!="" && _qidx!="") {
			show_content(_qno, _qidx);
		}

	});

	function show_content(qno,qidx) {
		for (var i=0; i <= 8; i++) {
			if ($(eval("viewcontent_" + i))) {
				if (qno == i) {
					if ($(eval("viewcontent_" + i)).css('display') == "none") {
						$(eval("viewcontent_" + qno)).show('slow'); // 내용보임
						$(eval("question_" + qno)).attr("class", "onQ");
						$(eval("arrow_" + qno)).attr("src", "http://contents.albamon.kr/monimg/customer/faq/icon_arrow_close.gif");
						$(eval("arrow_" + qno)).attr("alt", "내용닫기");

						//조회수
						$("#ifmRead").attr("src", "/customer/mon_faq_list_process.asp?qidx=" + qidx);
					}
					else
					{
						$(eval("viewcontent_" + qno)).hide(400);
						$(eval("question_" + qno)).attr("class", "offQ");
						$(eval("arrow_" + qno)).attr("src", "http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif");
						$(eval("arrow_" + qno)).attr("alt", "내용열기");
					}
				}
				else {
					$(eval("viewcontent_" + i)).hide(400);
					$(eval("question_" + i)).attr("class", "offQ");
					$(eval("arrow_" + i)).attr("src", "http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif");
					$(eval("arrow_" + i)).attr("alt", "내용열기");
				}
			}
		}
	};
</script>


</head>


<body>

<section id="breadcrumbs" class="breadcrumbs" style="padding: 0%; margin-top: 0px;">
	<nav class="nav-menu d-none d-lg-block">
		<ul style="padding-left: 80px;">
			<li><h2>고객 센터</h2></li>
		</ul>
	</nav>
</section>

	<div class="faq-container">
		<div class="menuWrap">
			<div align="center">
				<h5>자주묻는질문</h5><br>
				<a href="javascript:void(0);" onclick="showList('1');" class="btn" id="btnList1" > 
					<img src="${pageContext.request.contextPath}/images/tab_gg.png" alt="개인회원"></a><br>
				<a href="javascript:void(0);" onclick="showList('2');" class="btn" id="btnList2" >
					<img src="${pageContext.request.contextPath}/images/tab_gi.png" alt="기업회원"></a>
			</div><br><br><br>
			<div align="right">
				<img src="${pageContext.request.contextPath}/images/customer_center.png"
					 alt="고객센터 1588-9351 / 평일 09:00 ~ 19:00, 토요일 09:00~15:00" width="140"/>
			</div>
			<script>
			function showList(value) {
				if (value == '1') {
					tblList1.style.display = '';
					tblList2.style.display = 'none';
				} else {
					tblList2.style.display = '';
					tblList1.style.display = 'none';

				}
			};
			</script>
		</div>
		<div class="listWrap">
			<div class="inner">

			<!-- 리스트-개인 -->
				<div class="list">
					<table summary="FAQ 리스트" class="tbFaq" id="tblList1" style="display: ">
						<colgroup>
							<col width="25">
							<col width="*">
							<col width="40">
						</colgroup>
						<tbody>

							<tr class="offQ" id="question_0">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#" onclick="show_content(0,1);">회원가입은 무료인가요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(0,1);">
									<img id="arrow_0"
										 src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										 alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_0" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										회원가입은 무료입니다.<br><br>
										회원가입 방법으로는 `회원가입` 버튼을 클릭하여 가입하실 수 있습니다.<br><br>
										아이디, 비밀번호, 이메일 주소 등 간단한 개인정보를 입력하고 휴대폰 번호인증을 완료하면 바로 회원가입이 되어 Job Zone의 개인회원 서비스를 이용하실 수 있습니다.<br><br>
										* 가입 시 작성한 정보의 수정은 로그인 후 마이페이지 메뉴에서 가능합니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_1">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(1,3);">회원탈퇴는 어디에서 하나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(1,3);"><img
										id="arrow_1"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_1" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										별도로 안내되어 있는 고객센터 전화번호로 전화를 주시면 빠른 처리 도와드리도록 하겠습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_2">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(2,28);">개인회원으로는 채용공고를 등록할 수 없나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(2,28);"><img
										id="arrow_2"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_2" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										기본적으로 채용공고 등록/관리는 기업회원님께 제공하는 서비스입니다.<br>
										기업회원으로 가입/로그인 후 공고등록 이용을 부탁 드립니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_3">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(3,29);">미성년자는 회원가입이 안 되나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(3,29);"><img
										id="arrow_3"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_3" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										주민등록 상의 연령이 만 15세 미만인 경우, “근로기준법 제 64조” 내용에 근거하여<br> 취업이
										불가능하므로 구인구직을 목적으로 하는 Job Zone에 회원가입 하실 수 없습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_4">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(4,96);">아이디를 다른 걸로 변경할 수 있나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(4,96);"><img
										id="arrow_4"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_4" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										한 번 부여된 아이디는 변경이 불가능합니다.<br><br>부득이하게 아이디를 변경하셔야 한다면,<br>
										회원탈퇴를 하신 후, 새로운 아이디로 재가입 하시는 방법이 있습니다.<br><br>
										단, 회원탈퇴를 하시면 등록하신 이력서 및 온라인 지원 등 그동안 저장되었던 회원님의 정보가 모두 삭제되고,	
										사용했던 아이디는 재사용이 불가능하므로 신중하게 생각하신 후 탈퇴를 하시기 바랍니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_5">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(5,97);">개인회원으로 가입된 아이디가 있는데, 사업자 번호 등록해서 기업회원으로 바꿀 수 있나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(5,97);"><img
										id="arrow_5"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_5" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										개인회원으로 가입된 아이디는 기업회원으로 변경이 불가합니다. <br>
										기업회원의 경우 구인을 위해 채용기업의 사업자등록증 정보로 회원가입 후 이용해 주셔야 하며,<br>
										개인회원으로 가입된 ID는 동일하게 재사용할 수 없습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_6">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(6,274);">이력서 등록은 어떻게 합니까?</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(6,274);"><img id="arrow_6"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_6" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										아직 이력서를 등록하시지 않았다면,<br>
										개인로그인 > 이력서관리 > 새 이력서 등록하기로 들어가시면 이력서 등록 화면이 나옵니다.<br><br>
										제목, 희망근무조건, 학력/자격/경력사항 등을 정확하고 자세하게 입력하세요.<br><br>
										마지막으로 자기소개를 정성껏 작성하신 후 하단의 [작성완료] 버튼을 클릭하시면 이력서가 저장됩니다.<br>
										이력서는 최대 6개까지 등록할 수 있으며 1개 이력서만 공개할 수 있습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_7">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(7,276);">이력서 저장에 오류가 생겨요!</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(7,276);"><img id="arrow_7"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_7" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										이력서 등록시 오류 현상의 해결을 위해 필수 입력값을 모두 입력하였는지 확인 바랍니다.<br>
										위의 방법대로 해보신 후에도 저장이 안될 경우, 별도 안내되어 있는 Job Zone 고객센터로 전화 문의 주시기 바랍니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_8">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(8,277);">내가 검색하는 조건대로만 채용정보를 볼 수 있는 방법이 있나요?</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(8,277);"><img id="arrow_8"
										src="https://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_8" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										채용 정보의 상세 검색 서비스를 이용해 <br>
										원하는 지역, 업직종 외에 다양한 검색 조건 등을 상세하게 설정하여 조건에 맞는 채용 정보를 편리하게 확인할 수 있습니다.<br>
										맞춤알바 설정 및 알바 리스트 확인 방법은 아래와 같습니다.
									</div>
								</td>
							</tr>

						</tbody>
					</table>
			<!-- 리스트-개인 -->

			<!--// 리스트-기업 -->
					<table summary="FAQ 리스트" class="tbFaq" id="tblList2" style="display: none">
						<colgroup>
							<col width="25">
							<col width="*">
							<col width="40">
						</colgroup>
						<tbody>

							<tr class="offQ" id="question_0">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(0,31);">기업회원 가입은 무료입니까?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(0,31);"><img
										id="arrow_0"
										src="http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_0" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										Job Zone에 기업회원으로 가입 하시는 데는 일체 비용이 들지 않습니다.<br> 즉, 회원가입은
										무료입니다.<br>
										<br> 회원가입 시 아이디, 비밀번호, 회사명, 사업자 등록번호 등 기업 정보를 입력하시면 바로
										회원가입이 되어 Job Zone의 기업회원 서비스를 이용하실 수 있습니다.<br>
										<br> 가입 시 작성하셨던 정보를 수정하시려면 상단 메뉴 중 [마이페이지]로 들어가신 후 기업정보,
										가입자정보 등을 수정하실 수 있습니다.<br>
										<br> 공고 등록 역시 무료로 하실 수 있습니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_1">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(1,32);">회원탈퇴는 어디에서 하나요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(1,32);"><img
										id="arrow_1"
										src="http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_1" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										별도로 안내되어 있는 고객센터 전화번호로 전화를 주시면 탈퇴신청이 접수됩니다.<br>
										<br> 즉시 탈퇴처리가 되는 것은 아니며, 운영자 확인을 거쳐 탈퇴가 이루어집니다.<br>
										운영자 확인까지 1시간 가량 시간이 걸릴 수 있으니 양해해 주시기 바랍니다.<br> (고객센터 업무 외
										시간에 신청을 하시면 다음날에 처리될 수 있습니다.)<br>
										<br> 탈퇴처리가 되면 회원님의 메일로 탈퇴 되었다는 메일이 발송됩니다.<br> 탈퇴 후에는
										동일 아이디로 다시 가입할 수 없으며, 아이디와 데이터는 복구할 수 없으니 신중하게 선택해 주세요.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_2">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(2,37);">사업자등록증이 없어도 회원가입이 가능한가요?</a></td>
								<td class="arrow"><a href="#" onclick="show_content(2,37);"><img
										id="arrow_2"
										src="http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_2" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										발급받은 사업자등록증의 번호를 입력해야만 회원가입이 가능합니다.<br> 필수 입력 정보로서, 이는
										사업자등록번호 도용 등에 의해 발생할 수 있는 피해를 미연에 방지하기 위함이니 양해 바랍니다.<br>
										<br> 더 자세한 내용은 Job Zone 고객센터로 전화 문의하시기 바랍니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_3">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(3,94);">공고등록은 유료인가요? </a></td>
								<td class="arrow"><a href="#" onclick="show_content(3,94);"><img
										id="arrow_3"
										src="http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_3" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										Job Zone의 공고 등록 서비스는 모두 무료입니다.<br>
										<br> 단, 귀사의 공고에 차별화된 노출 지면/위치 및 특별한 노출 효과를 주시려면 Job Zone
										고객센터로 전화 문의하시기 바랍니다.
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_4">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(4,133);">공고를 등록하면 채용정보 리스트에 바로 게재되나요?</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(4,133);"><img id="arrow_4"
										src="http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_4" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										등록한 공고는 즉시 게재됩니다.<br>
									</div>
								</td>
							</tr>

							<tr class="offQ" id="question_5">
								<td class="mark1">Q.</td>
								<td class="question"><a href="#"
									onclick="show_content(5,260);">회원가입 없이 구인등록을 할 수 있나요?</a></td>
								<td class="arrow"><a href="#"
									onclick="show_content(5,260);"><img id="arrow_5"
										src="http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif"
										alt="내용열기"></a></td>
							</tr>
							<tr class="onA" id="viewcontent_5" style="display: none;">
								<td colspan="3" class="answer">
									<div class="txBx">
										Job Zone은 비회원 구인등록이 불가능합니다.<br> 공고 등록을 하기 위해서는 기업회원으로 가입
										하셔야 합니다.
									</div>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- 리스트-기업 //-->
			</div>
		</div>
	</div>
</body>
</html>