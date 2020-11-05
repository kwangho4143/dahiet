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
</style>

<script>
$(document).ready(function() {
	
	// 하단 체크박스 체크시 항목 추가
	// 경력
	$('#chkCareer').on("click", function() {
		if ($('#tblCareer').css('display') == 'none') {
			$('#tblCareer').show();
		} else {
			$('#tblCareer').hide();
		}
	});	
	// 자격
	$('#chkLicense').on("click", function() {
		if ($('#tblLicense').css('display') == 'none') {
			$('#tblLicense').show();
		} else {
			$('#tblLicense').hide();
		}
	});	
	// 대외
	$('#chkActivity').on("click", function() {
		if ($('#tblActivity').css('display') == 'none') {
			$('#tblActivity').show();
		} else {
			$('#tblActivity').hide();
		}
	});	
	// 수상
	$('#chkAward').on("click", function() {
		if ($('#tblAward').css('display') == 'none') {
			$('#tblAward').show();
		} else {
			$('#tblAward').hide();
		}
	});	
	// 어학
	$('#chkLanguage').on("click", function() {
		if ($('#tblLanguage').css('display') == 'none') {
			$('#tblLanguage').show();
		} else {
			$('#tblLanguage').hide();
		}
	});
	
	// 추가 버튼 클릭시 행 추가
	var cnt1 = 0;
	var cnt2 = 0;
	var cnt3 = 0;
	var cnt4 = 0;
	var cnt5 = 0;
	// 경력
	$('#rowAddCareer').on("click", function(event) { 
		cnt1++;
		event.preventDefault();
		$('#tbodyCareer').clone().appendTo('#tblCareer');
	});
	// 자격
	$('#rowAddLicense').on("click", function(event) { 
		cnt2++;
		event.preventDefault();
		$('#tbodyLicense').clone().appendTo('#tblLicense');
	});	
	// 대외
	$('#rowAddActivity').on("click", function(event) { 
		cnt3++;
		event.preventDefault();
		$('#tbodyActivity').clone().appendTo('#tblActivity');
	});	
	// 수상
	$('#rowAddAward').on("click", function(event) { 
		cnt4++;
		event.preventDefault();
		$('#tbodyAward').clone().appendTo('#tblAward');
	});	
	// 어학
	$('#rowAddLanguage').on("click", function(event) { 
		cnt5++;
		event.preventDefault();
		$('#tbodyLanguage').clone().appendTo('#tblLanguage');
	});
	
	
	// 삭제버튼 클릭시 아래에서부터 행 삭제
	// 경력
 	$('#rowDelCareer').on("click", function(event) {
		event.preventDefault();
		if (cnt1 > 0) {
			cnt1--;
			$('#tbodyCareer').remove();
		} else {
			alert("더 이상 삭제할 수 없습니다.");
			return null;
		}
	}); 

	// 자격
	$('#rowDelLicense').on("click", function(event) {
		event.preventDefault();
		if (cnt2 > 0) {
			cnt2--;
			$('#tbodyLicense').remove();
		} else {
			alert("더 이상 삭제할 수 없습니다.");
			return null;
		}
	}); 
	// 대외
 	$('#rowDelActivity').on("click", function(event) {
		event.preventDefault();
		if (cnt3 > 0) {
			cnt3--;
			$('#tbodyActivity').remove();
		} else {
			alert("더 이상 삭제할 수 없습니다.");
			return null;
		}
	}); 
	// 수상
 	$('#rowDelAward').on("click", function(event) {
		event.preventDefault();
		if (cnt4 > 0) {
			cnt4--;
			$('#tbodyAward').remove();
		} else {
			alert("더 이상 삭제할 수 없습니다.");
			return null;
		}
	}); 
	// 어학
 	$('#rowDelLanguage').on("click", function(event) {
		event.preventDefault();
		if (cnt5 > 0) {
			cnt5--;
			$('#tbodyLanguage').remove();
		} else {
			alert("더 이상 삭제할 수 없습니다.");
			return null;
		}
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
								<th width="150">이력서 이름</th>
								<td colspan="4"><input type="text" id="name" name="name" size="80"></td>
							</tr>
							<tr height="50">
								<td rowspan="3"><img alt="" src="">(사진)</td>
								<th width="120">이 름</th>
								<td><input type="text" id="uname" name="uname"></td>
								<th width="120">생년월일</th>
								<td><input type="date" id="birth" name="birth"></td>
							</tr>
							<tr height="50">
								<th width="120">이메일</th>
								<td><input type="text" id="email" name="email"></td>
								<th width="120">휴대폰</th>
								<td><input type="text" id="tel" name="tel"></td>
							</tr>
							<tr height="50">
								<th width="150">주소</th>
								<td colspan="3"><input type="text" id="addr" name="addr" size="60"></td>
							</tr>
							<tr height="50">
								<th width="150">최종학력</th>
								<td colspan="4"><input type="text" id="univ" name="univ"></td>

							</tr>
							<tr>
								<th width="120">전공</th>
								<td colspan="2"><input type="text" id="major" name="major"></td>
								<th width="120">졸업학점</th>
								<td><input type="text" id="score" name="score"></td>
							</tr>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblCareer" style="display: none;">
							<thead>
							<tr>
								<td height="70" colspan="5"><h3 align="center">경 력 사 항&nbsp;
								<button id="rowAddCareer" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelCareer" class="btn btn-dark btn-sm">삭제</button>
								</h3>
								</td>
							</tr>
							</thead>
							<tbody id="tbodyCareer">
							<tr height="50">
								<th width="150">회사명</th>
								<td colspan="3"><input type="text" id="co_name" name="co_name"></td>
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
								<td height="70" colspan="5"><h3 align="center">자 격 사 항&nbsp;
								<button id="rowAddLicense" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelLicense" class="btn btn-dark btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyLicense">
							<tr height="50">
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
								<td height="70" colspan="5"><h3 align="center">대 외 활 동&nbsp;
								<button id="rowAddActivity" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelActivity" class="btn btn-dark btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyActivity">
							<tr height="50">
								<th width="150">구분(고용형태)</th>
								<td colspan="4"><input type="text" id="act_type" name="act_type"></td>
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
								<td height="70" colspan="5"><h3 align="center">수 상 내 역&nbsp;
								<button id="rowAddAward" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelAward" class="btn btn-dark btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyAward">
							<tr height="50">
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
								<td height="70" colspan="5"><h3 align="center">어 학 능 력&nbsp;
								<button id="rowAddLanguage" class="btn btn-danger btn-sm">추가</button>
								<button id="rowDelLanguage" class="btn btn-dark btn-sm">삭제</button>
								</h3></td>
							</tr>
							</thead>
							<tbody id="tbodyLanguage">
							<tr height="50">
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
							<input type="submit" value="이력서 등록"> &nbsp;&nbsp;
							<input type="reset" value="취 소"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>
</html>