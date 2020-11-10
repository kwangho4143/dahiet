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

</head>


<body>
				
	<div align="center">
	
		<div>
			<h1>이 력 서</h1>
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
								<th width="150">이력서 제목</th>
								<td colspan="4">resume_name</td>
							</tr>
							<tr height="50">
								<td rowspan="3"><img alt="" src="">imag</td>
								<th width="120">이 름</th>
								<td>name</td>
								<th width="120">생년월일</th>
								<td>birth</td>
							</tr>
							<tr height="50">
								<th width="120">이메일</th>
								<td>email</td>
								<th width="120">휴대폰</th>
								<td>tel</td>
							</tr>
							<tr height="50">
								<th width="150">주소</th>
								<td colspan="3">addr</td>
							</tr>
							<tr height="50">
								<th width="150">최종학력</th>
								<td colspan="4">univ</td>

							</tr>
							<tr>
								<th width="120">전공</th>
								<td colspan="2">major</td>
								<th width="120">졸업학점</th>
								<td>score</td>
							</tr>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblCareer">
							<thead>
							<tr>
								<td height="70" colspan="5"><h3 align="center">경 력 사 항&nbsp;</h3>
								</td>
							</tr>
							</thead>
							<tbody id="tbodyCareer">
							<tr height="50">
								<th width="150">회사명</th>
								<td colspan="4">co_name</td>
							</tr>
							<tr height="50">
								<th width="120">근무부서</th>
								<td colspan="2">dept_name</td>
								<th width="120">연봉</th>
								<td>ca_salary</td>
							</tr>
							<tr height="50">
								<th width="120">재직기간</th>
								<th width="120">입사일</th>
								<td>ca_hiredate</td>
								<th width="120">퇴사일</th>
								<td>ca_retiredate</td>
							</tr>
							<tr height="50">
								<th width="150">담당업무</th>
								<td colspan="4">ca_worked</td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblLicense">
							<thead>
							<tr>
								<td height="70" colspan="5"><h3 align="center">자 격 사 항&nbsp;</h3>
								</td>
							</tr>
							</thead>
							<tbody id="tbodyLicense">
							<tr height="50">
								<th width="150">자격증명</th>
								<td colspan="4">lic_name</td>
							</tr>
							<tr height="50">
								<th width="150">자격증번호</th>
								<td colspan="4">lic_no</td>
							</tr>
							<tr height="50">
								<th width="120">발행저</th>
								<td colspan="2">lic_place</td>
								<th width="120">취득연월일</th>
								<td>lic_getdate</td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblActivity">
							<thead>
							<tr>
								<td height="70" colspan="5"><h3 align="center">대 외 활 동&nbsp;</h3>
								</td>
							</tr>
							</thead>
							<tbody id="tbodyActivity">
							<tr height="50">
								<th width="150">구분(고용형태)</th>
								<td colspan="4">act_type</td>
							</tr>
							<tr height="50">
								<th width="150">활동명</th>
								<td colspan="4">act_name</td>
							</tr>
							<tr height="50">
								<th width="150">활동주관처</th>
								<td colspan="4">act_publish</td>
							</tr>
							<tr height="50">
								<th width="120">활동기간</th>
								<th width="120">시작일</th>
								<td>act_startdate</td>
								<th width="120">종료일</th>
								<td>act_enddate</td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblAward">
							<thead>
							<tr>
								<td height="70" colspan="5"><h3 align="center">수 상 내 역&nbsp;</h3>
								</td>
							</tr>
							</thead>
							<tbody id="tbodyAward">
							<tr height="50">
								<th width="150">수상명</th>
								<td colspan="4">awd_name</td>
							</tr>
							<tr height="50">
								<th width="120">수여기관</th>
								<td colspan="2">awd_place</td>
								<th width="120">수상일</th>
								<td>awd_date</td>
							</tr>
							<tr height="50">
								<th width="150">수상내용</th>
								<td colspan="4">awd_content</td>
							</tr>
							</tbody>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblLanguage">
							<thead>
							<tr>
								<td height="70" colspan="5"><h3 align="center">어 학 능 력&nbsp;</h3>
								</td>
							</tr>
							</thead>
							<tbody id="tbodyLanguage">
							<tr height="50">
								<th width="150">어학자격명</th>
								<td colspan="4">lag_name</td>
							</tr>
							<tr height="50">
								<th width="150">인증기관</th>
								<td colspan="4">lag_place</td>
							</tr>
							<tr height="50">
								<th width="120">성적</th>
								<td colspan="2">lag_score</td>
								<th width="120">인증날짜</th>
								<td>lag_date</td>
							</tr>
							</tbody>
						</table><br/>
					</div>
					
					
					<br/><br/>
					<div>
					<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/ResumeList.do'">확 인</button>&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/ResumeList.do'">취 소</button>
					</div>
					
					
				</form>
			</div>
		</div>
	</div>

</body>
</html>