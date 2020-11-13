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
	width: 1000px;
	height: 500px;
	padding-left: 210px;
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
} */

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
	</script>


<script>
	$(document).ready(function()
	{
		var speed = 300;
		var lipos = $('.listWrap').offset();

		$('.btnTop').hide();

		$(function(){
			$('.listWrap').scroll(function () {
				if ($('.listWrap').scrollTop() > 0) $('.btnTop').fadeIn(100);
				else  $('.btnTop').fadeOut(200);
			});

			$('.btnTop button').click(function() {
				$('.listWrap').animate({scrollTop:lipos.top-60}, speed);
							return false;
			});

			$('#btnSearch').click(function(){
				var search_keyword = $("#search_keyword").val();

				if(search_keyword == "궁금하신 내용을 입력하세요. 예)회원가입" || search_keyword == "") {
					alert("검색 내용을 입력해 주세요.");
					$("#search_keyword").focus();
					return false;
				}
				document.frmFAQ.submit();
			});

			$(".txBx>img").each(function(){
				if($(this).prop("width") > 580) {
					$(this).width(580);
				}
			});
		});

		var _qno = "";
		var _qidx = "";
		if (_qno!="" && _qidx!="") {
			show_content(_qno, _qidx);
		}

		// 개인정보 동의 및 위탁
        $('.agree button').on('click', function() {
            var $target = $(this);
            var $agreeTerms = $target.parent().next('.agreeBox');
            if ($target.hasClass('active')) {
                $agreeTerms.slideUp(300, function() {
                    $target.removeClass('active');
                    $target.html("내용보기");
                });
            } else {
                $target.addClass('active');
                $agreeTerms.slideDown(300, function() {
                    $target.html("내용닫기");
                });
            }
        });

        // 전담컨설턴트 레이어 열기
        $('#dev_request_rm').on('click', function() {
			var checkLogin = checkCorpLogin();
			if (checkLogin == true) {
				$('.lyCorpConsultingWp').show();
				var width = $('.lyCorpConsulting').width();
				var height = $('.lyCorpConsulting').height();
				$('.lyCorpConsulting').css({
					'left': ($(window).width() - width) / 2,
					'top': ($(window).height() - height) / 2
				});
			}
        });

        // 레이어 닫기
        $('.btnClo').on('click', function() {
            $('.lyCorpConsultingWp').hide();
        });

		// 전담컨설턴트 요청 완료
		$('.lyCorpConsulting .btnWp button').on('click', function () {
            var checkLogin = checkCorpLogin();
            if (checkLogin == true) {
                var inputName = $('#lb_name_1').val();
                var phone1 = $('#lb_tel_1').val();
                var phone2 = $('#lb_tel_2').val();
                var phone3 = $('#lb_tel_3').val();
                var phoneNo = phone1 + phone2 + phone3;

                // 입력필드 유효성 검사
                if (inputName.length > 10) {
                    alert("이름은 최대 10자까지 입력 가능합니다.");
                    inputName.focus();
                    return false;
                }
                if (inputName.length < 1) {
                    alert("이름을 입력해주세요.");
                    $('#lb_name_1').focus();
                    return false;
                }
                if (phone1 == "선택" || phone2.length > 4 || phone3.length > 4 || phone2.length < 1 || phone3.length < 1) {
                    alert("연락처를 입력해주세요");
                    return false;
                }
                if ($('#lb_privacy_1').is(":checked") == false) {
                    alert("개인정보 수집 이용에 동의해주세요.");
                    return false;
                }
                if ($('#lb_privacy_2').is(":checked") == false) {
                    alert("개인정보 처리위탁에 동의해주세요.");
                    return false;
                }

                requestRMSend(inputName, phoneNo, 0);
            }
        });
	});

	function show_content(qno,qidx) {
		for (var i=0; i <= 8; i++) {
			if ($(eval("viewcontent_" + i))) {
				if (qno == i) {
					if ($(eval("viewcontent_" + i)).css('display') == "none") {
						$(eval("viewcontent_" + qno)).attr("style", "display:;"); // 내용보임
						$(eval("question_" + qno)).attr("class", "onQ");
						$(eval("arrow_" + qno)).attr("src", "http://contents.albamon.kr/monimg/customer/faq/icon_arrow_close.gif");
						$(eval("arrow_" + qno)).attr("alt", "내용닫기");

						//조회수
						$("#ifmRead").attr("src", "/customer/mon_faq_list_process.asp?qidx=" + qidx);
					}
					else
					{
						$(eval("viewcontent_" + qno)).attr("style", "display:none;");
						$(eval("question_" + qno)).attr("class", "offQ");
						$(eval("arrow_" + qno)).attr("src", "http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif");
						$(eval("arrow_" + qno)).attr("alt", "내용열기");
					}
				}
				else {
					$(eval("viewcontent_" + i)).attr("style", "display:none;");
					$(eval("question_" + i)).attr("class", "offQ");
					$(eval("arrow_" + i)).attr("src", "http://contents.albamon.kr/monimg/customer/faq/icon_arrow_open.gif");
					$(eval("arrow_" + i)).attr("alt", "내용열기");
				}
			}
		}
	}

	// 기업회원 로그인 여부 체크
	function checkCorpLogin() {
		var result = false;
		$.ajax({
			url: "/account/auth/check-login?v=" + new Date().getTime(),
			type: "GET",
			dataType: 'json',
			data: [],
			async: false,
			error: function (info, xhr) { },
			success: function (req) {
				if (req) {
					if (req.IsLogin && req.MemberTypeCode == 'C') {
						result = true;
					}
					else if (req.IsLogin && req.MemberTypeCode == "M") {
						alert("기업회원만 요청하실 수 있습니다.");
					}
					else {
						alert("오랫동안 사용하지 않아 로그아웃 되었습니다. 다시 로그인 해주세요");
						location.href = '/login/login_member.asp?mtype=gi&re_url=' + encodeURIComponent(location.href);
					}
				}
			}
		});
		return result;
	}

	// 전담컨설턴트 요청 처리
	function requestRMSend(name, phone, checkStat) {
		$.ajax({
			url: "/recruitmanager/Request-RM-Send",
			type: "POST",
			cache: false,
			async: false,
			data: {
				hr_ofc_man_name: name,
				ctt_us: phone,
				is_already_check: checkStat
			},
			success: function (data) {
				// 요청이 정상적으로 처리되었을 경우
				if (data.ResultCode == 1) {
					alert("전담컨설턴트 요청이 완료되었습니다.\n최대한 빠르게 연락 드리도록 하겠습니다.");
					document.location.reload();
				}
				// 이미 요청한 경우
				else if (data.ResultCode == 2) {
					alert("이미 신청하셨습니다\n최대한 빠르게 연락 드리도록 하겠습니다.");
				}
				// 요청이력이 없을 경우 레이어 띄우기
				else if (data.ResultCode == 3) {
					$('.lyCorpConsultingWp').show();
					var width = $('.lyCorpConsulting').width();
					var height = $('.lyCorpConsulting').height();
					$('.lyCorpConsulting').css({ 'left': ($(window).width() - width) / 2, 'top': ($(window).height() - height) / 2 });
					$('.agree').css("margin-top", "0");
				}
				else {
					alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
				}
			},
			error: function () {
				alert('오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.');
			}
		});
	}
</script>


</head>
<body>
	<div class="faq-container">
		<div class="menuWrap">
			<div><h5 align="center">자주묻는질문</h5>
				<a href="javascript:void(0)" class="btn">
					<img src="${pageContext.request.contextPath}/images/tab_gg.png" alt="개인회원">
				</a>
				<a href="javascript:void(0)" class="btn">
					<img src="${pageContext.request.contextPath}/images/tab_gi.png" alt="기업회원">
				</a>
			</div><br>
			<div>
				<img src="${pageContext.request.contextPath}/images/call1.png"
					 alt="고객센터 1588-9351 / 평일 09:00 ~ 19:00, 토요일 09:00~15:00" />
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
								<td class="mark1">Q.</td>
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
								<td class="mark1">Q.</td>
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
								<td class="mark1">Q.</td>
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
								<td class="mark1">Q.</td>
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
								<td class="mark1">Q.</td>
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
								<td class="mark1">Q.</td>
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
								<td class="mark1">Q.</td>
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
			</div>
		</div>
	</div>
</body>
</html>