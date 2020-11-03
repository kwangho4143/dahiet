<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertResume.jsp</title>
<style type="text/css">
	table {
	  width: 850px;
	  border: 1px solid #333333;
	}
	td {
	  padding: 10px;
	  border: 1px solid #333333;
	}
	 th { 
	  padding: 10px;
	  border: 1px solid #333333;
	}
</style>

<script>
 	function showDis1() {
		if($('#career').css('display') == 'none') {
			$('#career').show();
		}else {
			$('#career').hide();
		}
	}
	
 	function showDis2() {
		if($('#license').css('display') == 'none') {
			$('#license').show();
		} else {
			$('#license').hide();
		}
	}
	
	function showDis3() {
		if($('#activity').css('display') == 'none') {
			$('#activity').show();
		} else {
			$('#activity').hide();
		}
	}
	
	function showDis4() {
		if($('#award').css('display') == 'none') {
			$('#award').show();
		} else {
			$('#award').hide();
		}
	}
	
	function showDis5() {
		if($('#language').css('display') == 'none') {
			$('#language').show();
		} else {
			$('#language').hide();
		}
	}
	
	
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
								<td rowspan="4"><img alt="" src="">(사진)</td>
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
								<th colspan="1" width="150">주소</th>
								<td colspan="4"><input type="text" id="addr" name="addr" size="60"></td>
							</tr>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="career" style="display: none;">
							<tr>
								<td height="70" colspan="5"><h3 align="center">경 력 사 항&nbsp;
								<a href="#" id="addCar"><button type="button" class="btn btn-dark btn-sm">추가</button></a></h3>
								</td>
							</tr>
							<tr height="50">
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
						</table><br/><br/>
					</div>
					
					<div>
						<table id="license" style="display: none;">
							<tr>
								<td height="70" colspan="5"><h3 align="center">자 격 사 항&nbsp;
								<a href="#" id="addCar"><button type="button" class="btn btn-dark btn-sm">추가</button></a></h3></td>
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
						</table><br/><br/>
					</div>
					
					<div>
						<table id="activity" style="display: none;">
							<tr>
								<td height="70" colspan="5"><h3 align="center">대 외 활 동&nbsp;
								<a href="#" id="addCar"><button type="button" class="btn btn-dark btn-sm">추가</button></a></h3></td>
							<tr height="50">
								<th width="150">활동구분(고용형태)</th>
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
						</table><br/><br/>
					</div>
					
					<div>
						<table id="award" style="display: none;">
							<tr>
								<td height="70" colspan="5"><h3 align="center">수 상 내 역&nbsp;
								<a href="#" id="addCar"><button type="button" class="btn btn-dark btn-sm">추가</button></a></h3></td>
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
						</table><br/><br/>
					</div>
					
					<div>
						<table id="language" style="display: none;">
							<tr>
								<td height="70" colspan="5"><h3 align="center">어 학 능 력&nbsp;
								<a href="#" id="addCar"><button type="button" class="btn btn-dark btn-sm">추가</button></a></h3></td>
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
						</table><br/>
					</div>
					
					<br/><br/>
					<table>
						<tr>
							<th width="150">이력서 항목 추가</th>
							<td align="center">
								<input type="checkbox" name="resume" onclick="showDis1(this.value)"> 경력사항 &nbsp;&nbsp;
								<input type="checkbox" name="resume" onclick="showDis2(this.value)"> 자격사항 &nbsp;&nbsp;
								<input type="checkbox" name="resume" onclick="showDis3(this.value)"> 대외활동 &nbsp;&nbsp;
								<input type="checkbox" name="resume" onclick="showDis4(this.value)"> 수상내역 &nbsp;&nbsp;
								<input type="checkbox" name="resume" onclick="showDis5(this.value)"> 어학능력 &nbsp;&nbsp;
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