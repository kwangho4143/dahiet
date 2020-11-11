<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertResume.jsp</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">
	table {
	  width: 850px;
	  border: 1px solid lightgrey;
	}
	td {
	  padding: 10px;
	  border: 1px solid lightgrey;
	}
	 th { 
	  padding: 10px;
	  border: 1px solid lightgrey;
	}
	.point {
    color: #fc0038;
    font-size: 12px;
    letter-spacing: -1px;
	}
</style>

<script>
$(document).ready(function() {

	// *경력
	// 하단 체크박스 체크시 항목 추가
	$('#chkCareer').on("click", function() {
		if ($('#tblCareer').css('display') == 'none') {
			$('#tblCareer').show();
		} else {
			$('#tblCareer').hide();
		}
	});
	
	var career_count = 1; // 몇 건 추가하는지 카운트
	// 삭제 버튼 눌러서 체크한 항목 삭제
	$('#rowDelCareer').click(function(event) {
		event.preventDefault();
		//체크된 행이 없을 경우
		if ($('#tblCareer input:checkbox:checked').length == 0) {
			alert("삭제할 행을 선택하여 주십시오.");
		} else {
			$('#tblCareer input[type=checkbox]:checked').each(function(index) {
				career_count--;
				if ($('#tblCareer input:checkbox').length == 1) {
					alert("모든 행을 삭제할 수 없습니다.");
				} else {
					//체크박스를 포함하고 있는 행 제거 
					var clickedRowCareer = $(this).parent().parent().parent();
					var clickedRowCareerNext = clickedRowCareer.next("tr");
					clickedRowCareer.remove();
					clickedRowCareerNext.remove();
				}
			});
		}
	});
	
	var cloneCareerTr = $("#tblCareer tbody").clone();

	//추가 버튼 눌러서 
	$("#rowAddCareer").click(function(event) {
		event.preventDefault();
		career_count++;
		//복제 대상이 없으면 문제가 되므로 
		//문서가 로딩될때 복사할 대상을 변수에 담아 놓고 
		//추가 버튼을 누를때마다 저장해놓은 요소를 복제해서 추가
		cloneCareerTr.find("#tblCareer input").val(""); //텍스트박스 값 초기화
		cloneCareerTr.find("#tblCareer input[type=checkbox]").removeAttr("checked");
		$("#tblCareer").append(cloneCareerTr.clone())
	});
	
	
	
	// *자격
	// 하단 체크박스 체크시 항목 추가
	$('#chkLicense').on("click", function() {
		if ($('#tblLicense').css('display') == 'none') {
			$('#tblLicense').show();
		} else {
			$('#tblLicense').hide();
		}
	});	
	
	var license_count = 1; // 몇 건 추가하는지 카운트

	// 삭제 버튼 눌러서 체크한 항목 삭제
	$('#rowDelLicense').click(function(event) {
		event.preventDefault();
		//체크된 행이 없을 경우
		if ($('#tblLicense input:checkbox:checked').length == 0) {
			alert("삭제할 행을 선택하여 주십시오.");
		} else {
			$('#tblLicense input[type=checkbox]:checked').each(function(index) {
				license_count--;
				if ($('#tblLicense input:checkbox').length == 1) {
					alert("모든 행을 삭제할 수 없습니다.");
				} else {
					//체크박스를 포함하고 있는 행 제거 
					var clickedRowLicense = $(this).parent().parent().parent();
					var clickedRowLicenseNext = clickedRowLicense.next("tr");
					clickedRowLicense.remove();
					clickedRowLicenseNext.remove();
				}
			});
		}
	});
	
	var cloneLicenseTr = $("#tblLicense tbody").clone();
	//추가 버튼 눌러서 
	$("#rowAddLicense").click(function(event) {
		event.preventDefault();
		license_count++;
		cloneLicenseTr.find("#tblLicense input").val(""); //텍스트박스 값 초기화
		cloneLicenseTr.find("#tblLicense input[type=checkbox]").removeAttr("checked");
		$("#tblLicense").append(cloneLicenseTr.clone())
	});
	
	
	
	// *대외
	// 하단 체크박스 체크시 항목 추가
	$('#chkActivity').on("click", function() {
		if ($('#tblActivity').css('display') == 'none') {
			$('#tblActivity').show();
		} else {
			$('#tblActivity').hide();
		}
	});	
	
	var activity_count = 1; // 몇 건 추가하는지 카운트

	// 삭제 버튼 눌러서 체크한 항목 삭제
	$('#rowDelActivity').click(function(event) {
		event.preventDefault();
		//체크된 행이 없을 경우
		if ($('#tblActivity input:checkbox:checked').length == 0) {
			alert("삭제할 행을 선택하여 주십시오.");
		} else {
			$('#tblActivity input[type=checkbox]:checked').each(function(index) {
				activity_count--;
				if ($('#tblActivity input:checkbox').length == 1) {
					alert("모든 행을 삭제할 수 없습니다.");
				} else {
					//체크박스를 포함하고 있는 행 제거 
					var clickedRowActivity= $(this).parent().parent().parent();
					var clickedRowActivityNext = clickedRowActivity.next("tr");
					clickedRowActivity.remove();
					clickedRowActivityNext.remove();
				}
			});
		}
	});
	
	var cloneActivityTr = $("#tblActivity tbody").clone();
	//추가 버튼 눌러서 
	$("#rowAddActivity").click(function(event) {
		event.preventDefault();
		activity_count++;
		cloneActivityTr.find("#tblActivity input").val(""); //텍스트박스 값 초기화
		cloneActivityTr.find("#tblActivity input[type=checkbox]").removeAttr("checked");
		$("#tblActivity").append(cloneActivityTr.clone())
	});
	
	
	
	// *수상
	// 하단 체크박스 체크시 항목 추가
	$('#chkAward').on("click", function() {
		if ($('#tblAward').css('display') == 'none') {
			$('#tblAward').show();
		} else {
			$('#tblAward').hide();
		}
	});	
	
	var award_count = 1; // 몇 건 추가하는지 카운트
	
	// 삭제 버튼 눌러서 체크한 항목 삭제
	$('#rowDelAward').click(function(event) {
		event.preventDefault();
		//체크된 행이 없을 경우
		if ($('#tblAward input:checkbox:checked').length == 0) {
			alert("삭제할 행을 선택하여 주십시오.");
		} else {
			$('#tblAward input[type=checkbox]:checked').each(function(index) {
				award_count--;
				if ($('#tblAward input:checkbox').length == 1) {
					alert("모든 행을 삭제할 수 없습니다.");
				} else {
					//체크박스를 포함하고 있는 행 제거 
					var clickedRowAward = $(this).parent().parent().parent();
					var clickedRowAwardNext = clickedRowAward.next("tr");
					clickedRowAward.remove();
					clickedRowAwardNext.remove();
				}
			});
		}
	});
	
	var cloneAwardTr = $("#tblAward tbody").clone();
	//추가 버튼 눌러서 
	$("#rowAddAward").click(function(event) {
		event.preventDefault();
		award_count++;
		cloneAwardTr.find("#tblAward input").val(""); //텍스트박스 값 초기화
		cloneAwardTr.find("#tblAward input[type=checkbox]").removeAttr("checked");
		$("#tblAward").append(cloneAwardTr.clone())
	});
	
	
	
	// *어학
	// 하단 체크박스 체크시 항목 추가
	$('#chkLanguage').on("click", function() {
		if ($('#tblLanguage').css('display') == 'none') {
			$('#tblLanguage').show();
		} else {
			$('#tblLanguage').hide();
		}
	});
	
	var language_count = 1; // 몇 건 추가하는지 카운트
	
	// 삭제 버튼 눌러서 체크한 항목 삭제
	$('#rowDelLanguage').click(function(event) {
		event.preventDefault();
		//체크된 행이 없을 경우
		if ($('#tblLanguage input:checkbox:checked').length == 0) {
			alert("삭제할 행을 선택하여 주십시오.");
		} else {
			$('#tblLanguage input[type=checkbox]:checked').each(function(index) {
				language_count--;
				console.log(language_count);
				if ($('#tblLanguage input:checkbox').length == 1) {
					alert("모든 행을 삭제할 수 없습니다.");
				} else {
					//체크박스를 포함하고 있는 행 제거 
					var clickedRowLanguage = $(this).parent().parent().parent();
					var clickedRowLanguageNext = clickedRowLanguage.next("tr");
					clickedRowLanguage.remove();
					clickedRowLanguageNext.remove();
				}
			});
		}
	});
	
	var cloneLanguageTr = $("#tblLanguage tbody").clone();
	//추가 버튼 눌러서 
	$("#rowAddLanguage").click(function(event) {
		event.preventDefault();
		language_count++;
		cloneLanguageTr.find("#tblLanguage input").val(""); //텍스트박스 값 초기화
		cloneLanguageTr.find("#tblLanguage input[type=checkbox]").removeAttr("checked");
		$("#tblLanguage").append(cloneLanguageTr.clone())
	console.log(language_count);
	});
	
	
})

</script>
</head>


<body>

	<div align="center">
	
		<div>
			<h1>이 력 서 작 성</h1>
		</div> <br />
		<div>
			<div id="resumeTbl">
				<form id="resumeFrm" name="resumeFrm" action="" method="post" enctype="multipart/form-data">
		
					<div>
						<table>
							<tr>
								<td height="70" colspan="5"><h3 align="center">기 본 정 보</h3></td>
							</tr>
							<tr height="50">
								<th width="150">이력서 제목<span class="point">&nbsp;&nbsp;&nbsp;*</span></th>
								<td colspan="4">${name}</td>
							</tr>
							<c:forEach items="${list}" var="vo">
							<tr height="50">
								<td rowspan="3"><img alt="사진" src="${pageContext.request.contextPath}/images/${vo.imag}" width="120" height="150" align="middle"></td>
								<th width="120">이 름</th>
								<td>${vo.name}</td>
								<th width="120">생년월일</th>
								<td>${vo.birth}</td>
							</tr>
							<tr height="50">
								<th width="120">이메일</th>
								<td>${vo.email}</td>
								<th width="120">휴대폰</th>
								<td>${vo.tel}</td>
							</tr>
							<tr height="50">
								<th width="150">주소</th>
								<td colspan="3">${vo.addr}</td>
							</tr>
							<tr height="50">
								<th width="150">최종학력</th>
								<td colspan="4">${vo.univ}</td>
							</tr>
							<tr>
								<th width="120">전공</th>
								<td colspan="2">${vo.major}</td>
								<th width="120">졸업학점</th>
								<td>${vo.score}</td>
							</tr>
							</c:forEach>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblCareer" style="display: none;">
							<thead>
							<tr>
								<td height="70" colspan="6"><h3 align="center">경 력 사 항&nbsp;
								<button id="rowAddCareer" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelCareer" class="btn btn-outline-danger btn-sm">삭제</button>
								</h3>
								</td>
							</tr>
							</thead>
							<tbody id="tbodyCareer">
							<tr height="50">
								<td rowspan="4" width="30"><input type="checkbox" name="resume" id="chkDelCareer"></td>
								<th width="150">회사명</th>
								<td colspan="4"><input type="text" id="co_name" name="co_name"></td>
							</tr>
							<tr height="50">
								<th width="120">근무부서</th>
								<td colspan="2"><input type="text" id="dept_name" name="dept_name"></td>
								<th width="120">연봉</th>
								<td><input type="text" id="ca_salary" name="ca_salary"></td>
							</tr>
							<tr height="50">
								<th width="120">재직기간</th>
								<th width="120">입사일</th>
								<td><input type="date" id="ca_hiredate" name="ca_hiredate"></td>
								<th width="120">퇴사일</th>
								<td><input type="date" id="ca_retiredate" name="ca_retiredate"></td>
							</tr>
							<tr height="50">
								<th width="150">담당업무</th>
								<td colspan="4"><input type="text" id="ca_worked" name="ca_worked" size="80"></td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblLicense" style="display: none;">
							<thead>
							<tr>
								<td height="70" colspan="6"><h3 align="center">자 격 사 항&nbsp;
								<button id="rowAddLicense" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelLicense" class="btn btn-outline-danger btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyLicense">
							<tr height="50">
								<td rowspan="4" width="30"><input type="checkbox" name="resume" id="chkDelLicense"></td>
								<th width="150">자격증명</th>
								<td colspan="4"><input type="text" id="lic_name" name="lic_name"></td>
							</tr>
							<tr height="50">
								<th width="150">자격증번호</th>
								<td colspan="4"><input type="text" id="lic_no" name="lic_no"></td>
							</tr>
							<tr height="50">
								<th width="120">발행저</th>
								<td colspan="2"><input type="text" id="lic_place" name="lic_place"></td>
								<th width="120">취득연월일</th>
								<td><input type="date" id="lic_getdate" name="lic_getdate"></td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblActivity" style="display: none;">
							<thead>
							<tr>
								<td height="70" colspan="6"><h3 align="center">대 외 활 동&nbsp;
								<button id="rowAddActivity" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelActivity" class="btn btn-outline-danger btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyActivity">
							<tr height="50">
								<td rowspan="4" width="30"><input type="checkbox" name="resume" id="chkDelActivity"></td>
								<th width="150">구분(고용형태)</th>
								<td colspan="4"><input type="text" id="act_type" name="act_type" ></td>
							</tr>
							<tr height="50">
								<th width="150">활동명</th>
								<td colspan="4"><input type="text" id="act_name" name="act_name"></td>
							</tr>
							<tr height="50">
								<th width="150">활동주관처</th>
								<td colspan="4"><input type="text" id="act_publish" name="act_publish"></td>
							</tr>
							<tr height="50">
								<th width="120">활동기간</th>
								<th width="120">시작일</th>
								<td><input type="date" id="act_startdate" name="act_startdate"></td>
								<th width="120">종료일</th>
								<td><input type="date" id="act_enddate" name="act_enddate"></td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblAward" style="display: none;">
							<thead>
							<tr>
								<td height="70" colspan="6"><h3 align="center">수 상 내 역&nbsp;
								<button id="rowAddAward" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelAward" class="btn btn-outline-danger btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyAward">
							<tr height="50">
								<td rowspan="4" width="30"><input type="checkbox" name="resume" id="chkDelAward"></td>
								<th width="150">수상명</th>
								<td colspan="4"><input type="text" id="awd_name" name="awd_name"></td>
							</tr>
							<tr height="50">
								<th width="120">수여기관</th>
								<td colspan="2"><input type="text" id="awd_place" name="awd_place"></td>
								<th width="120">수상일</th>
								<td><input type="date" id="awd_date" name="awd_date"></td>
							</tr>
							<tr height="50">
								<th width="150">수상내용</th>
								<td colspan="4"><input type="text" id="awd_content" name="awd_content"></td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblLanguage" style="display: none;">
							<thead>
							<tr>
								<td height="70" colspan="6"><h3 align="center">어 학 능 력&nbsp;
								<button id="rowAddLanguage" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelLanguage" class="btn btn-outline-danger btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyLanguage">
							<tr height="50">
								<td rowspan="4" width="30"><input type="checkbox" name="resume" id="chkDelLanguage"></td>
								<th width="150">어학자격명</th>
								<td colspan="4"><input type="text" id="lag_name" name="lag_name"></td>
							</tr>
							<tr height="50">
								<th width="150">인증기관</th>
								<td colspan="4"><input type="text" id="lag_place" name="lag_place"></td>
							</tr>
							<tr height="50">
								<th width="120">성적</th>
								<td colspan="2"><input type="text" id="lag_score" name="lag_score"></td>
								<th width="120">인증날짜</th>
								<td><input type="date" id="lag_date" name="lag_date"></td>
							</tr>
							</tbody>
						</table><br/>
					</div>
					
					<br/><br/>
					<table>
						<tr>
							<th width="150">이력서 항목 추가</th>
							<td align="center">
								<input type="checkbox" name="resume" id="chkCareer"> 경력사항 &nbsp;&nbsp;
								<input type="checkbox" name="resume" id="chkLicense"> 자격사항 &nbsp;&nbsp;
								<input type="checkbox" name="resume" id="chkActivity"> 대외활동 &nbsp;&nbsp;
								<input type="checkbox" name="resume" id="chkAward"> 수상내역 &nbsp;&nbsp;
								<input type="checkbox" name="resume" id="chkLanguage"> 어학능력 &nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/resumeDetail.do'">이력서 작성하기</button>&nbsp;&nbsp;
							<button type="reset" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/ResumeList.do'">취 소</button>
							</td>
						</tr>
					</table>
					
				</form>
			</div>
		</div>
	</div>

</body>
</html>