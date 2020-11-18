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
	<div style="padding-left: 130px; background-color: #f8f9fa; height: 70px" class="d-flex justify-content-between align-items-center">
			<h2>이력서 상세보기</h2>
				</div>
				<hr>
		<div>
			<div id="resumeTbl">
				<form id="resumeFrm" name="resumeFrm" action="" method="post" enctype="multipart/form-data">

					<div>
						<table>
							<tr style="border-top: 5px solid lightgrey; border-bottom: 5px solid lightgrey;">
								<td height="70" colspan="5"><h3 align="center">기 본 정 보</h3></td>
							</tr>
							<tr height="50">
								<th width="150">이력서 제목</th>
								<td colspan="4">${vo.resume_name}</td>
							</tr>
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
							<tr style="border-bottom: 5px solid lightgrey;">
								<th width="120">전공</th>
								<td colspan="2">${vo.major}</td>
								<th width="120">졸업학점</th>
								<td>${vo.score}</td>
							</tr>
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblCareer">
							<c:if test="${list1 != null  && list1.size()>0 }"> 
							<tr style="border-top: 5px solid lightgrey; border-bottom: 5px solid lightgrey;">
								<td height="70" colspan="5"><h3 align="center">경 력 사 항&nbsp;</h3>
								</td>
							</tr>
							</c:if>
							<c:forEach items="${list1}" var="v1">
							<tr height="50">
								<th width="150">회사명</th>
								<td colspan="4">${v1.co_name}</td>
							</tr>
							<tr height="50">
								<th width="120">근무부서</th>
								<td colspan="2">${v1.dept_name}</td>
								<th width="120">연봉</th>
								<td>${v1.ca_salary}</td>
							</tr>
							<tr height="50">
								<th width="120">재직기간</th>
								<th width="120">입사일</th>
								<td>${v1.ca_hiredate}</td>
								<th width="120">퇴사일</th>
								<td>${v1.ca_retiredate}</td>
							</tr>
							<tr height="50" style="border-bottom: 4px solid lightgrey">
								<th width="150">담당업무</th>
								<td colspan="4">${v1.ca_worked}</td>
							</tr>
							</c:forEach>
						
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblLicense">
							<c:if test="${list4 != null && list4.size()>0}"> 
							<tr style="border-top: 5px solid lightgrey; border-bottom: 5px solid lightgrey;">
								<td height="70" colspan="5"><h3 align="center">자 격 사 항&nbsp;</h3>
								</td>
							</tr>
							</c:if>
							<c:forEach items="${list4}" var="v4">
							<tr height="50">
								<th width="150">자격증명</th>
								<td colspan="4">${v4.lic_name}</td>
							</tr>
							<tr height="50">
								<th width="150">자격증번호</th>
								<td colspan="4">${v4.lic_no}</td>
							</tr>
							<tr height="50" style="border-bottom: 5px solid lightgrey;">
								<th width="120">발행저</th>
								<td colspan="2">${v4.lic_place}</td>
								<th width="120">취득연월일</th>
								<td>${v4.lic_getdate}</td>
							</tr>
							</c:forEach>
							
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblActivity">
						<c:if test="${list2 != null && list2.size()>0}"> 
							<tr style="border-top: 5px solid lightgrey; border-bottom: 5px solid lightgrey;">
								<td height="70" colspan="5"><h3 align="center">대 외 활 동&nbsp;</h3>
								</td>
							</tr>
						</c:if>						
						
							<c:forEach items="${list2}" var="v2">
							<tr height="50">
								<th width="150">구분(고용형태)</th>
								<td colspan="4">${v2.act_type}</td>
							</tr>
							<tr height="50">
								<th width="150">활동명</th>
								<td colspan="4">${v2.act_name}</td>
							</tr>
							<tr height="50">
								<th width="150">활동주관처</th>
								<td colspan="4">${v2.act_publish}</td>
							</tr>
							<tr height="50" style="border-bottom: 5px solid lightgrey;">
								<th width="120">활동기간</th>
								<th width="120">시작일</th>
								<td>${v2.act_startdate}</td>
								<th width="120">종료일</th>
								<td>${v2.act_enddate}</td>
							</tr>
							</c:forEach>
							
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblAward">
							<c:if test="${list3 != null && list3.size()>0}"> 
							<tr style="border-top: 5px solid lightgrey; border-bottom: 5px solid lightgrey;">
								<td height="70" colspan="5"><h3 align="center">수 상 내 역&nbsp;</h3>
								</td>
							</tr>
							</c:if>
							
							<c:forEach items="${list3}" var="v3">
							<tr height="50">
								<th width="150">수상명</th>
								<td colspan="4">${v3.awd_name}</td>
							</tr>
							<tr height="50">
								<th width="120">수여기관</th>
								<td colspan="2">${v3.awd_place}</td>
								<th width="120">수상일</th>
								<td>${v3.awd_date}</td>
							</tr>
							<tr height="50" style="border-bottom: 5px solid lightgrey;">
								<th width="150">수상내용</th>
								<td colspan="4">${v3.awd_content}</td>
							</tr>
							</c:forEach>
							
						</table><br/><br/>
					</div>
					
					<div>
						<table id="tblLanguage">
							<c:if test="${list5 != null  && list5.size()>0}"> 
							<tr style="border-top: 5px solid lightgrey; border-bottom: 5px solid lightgrey;">
								<td height="70" colspan="5"><h3 align="center">어 학 능 력&nbsp;</h3>
								</td>
							</tr>
							</c:if>
							<c:forEach items="${list5}" var="v5">
							<tr height="50">
								<th width="150">어학자격명</th>
								<td colspan="4">${v5.lag_name}</td>
							</tr>
							<tr height="50">
								<th width="150">인증기관</th>
								<td colspan="4">${v5.lag_place}</td>
							</tr>
							<tr height="50" style="border-bottom: 5px solid lightgrey;">
								<th width="120">성적</th>
								<td colspan="2">${v5.lag_score}</td>
								<th width="120">인증날짜</th>
								<td>${v5.lag_date}</td>
							</tr>
							</c:forEach>
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