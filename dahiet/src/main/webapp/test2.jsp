<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<style>

* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
	padding-top: 50px;
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: tomato;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}

.recruit-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
	display: float-root;
}

.recruit-each {
	width: 185px;
	height: 180px;
	position: relative;
	border-top: 5px solid #bbb;
	padding: 5px;
	margin: 5px 5px 30px 5px;
	display: inline-block;
}

#recruitImg {
	width: 170px;
	height: 67px;
	margin: 5px 5px 15px 5px;
}

.info-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
	display: float-root;
}

.info-cell {
	max-width: 200px;
	height: 270px;
	border-top: 5px solid #bbb;
	padding: 10px;
	position: relative;
}

.main-job-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
	display: float-root;
}

.main-job-container .main-cell {
    min-height: 200px;
    max-width: 275px;
    padding: 24px 24px 0 24px;
}

.main-cell:first-child {
	margin-left: 0;
}

.main-cell .cell-1 {
	width: 275px;
}

.img-links {
	display: float-root;
}

table tr td{
	text-align: center;
	font-size: 80%;
	padding: 4px 8px 4px 8px;
}


</style>

</head>



<body>

	<div class="slideshow-container">
		<div class="mySlides">
			<div class="numbertext">1 / 3</div>
			<a href="https://www.youthcenter.go.kr/main.do" target="blank">
				<img src="${pageContext.request.contextPath}/images/ad1.jpg" style="width: 100%"></a>
		</div>
	
		<div class="mySlides">
			<div class="numbertext">2 / 3</div>
			<a href="http://www.v-job.or.kr/new/recruit/common.asp" target="blank">
				<img src="${pageContext.request.contextPath}/images/ad2.png" style="width: 100%"></a>
		</div>
	
		<div class="mySlides">
			<div class="numbertext">3 / 3</div>
			<a href="http://www.saramin.co.kr/zf_user/jobs/theme/sba-seoul" target="blank">
				<img src="${pageContext.request.contextPath}/images/ad3.JPG" style="width: 100%"></a>
		</div>
	
	</div><br>
	
	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div><br/>
	
	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000); // 2초 간격으로 이미지 전환
		}
	</script>

		
	
<div class="recruit-container">	
	<div>
		<h5>채용공고</h5>
	</div>
	<c:forEach var="mainlist" items="${mainlists}" begin="0" end="9">
		<div class="recruit-each" id="recruit-each">
			<a href="${pageContext.request.contextPath}/RecruitDetail.do?no=${mainlist.recruit_seq}" style="color: black;">
				<img id="recruitImg" alt="회사로고" src="${pageContext.request.contextPath}/images/${mainlist.img}">
				<p>${mainlist.name}</p><b>${mainlist.title}</b>
			</a>
		</div>
	</c:forEach>
</div><br><br>





<div class="main-job-container">	
	<div>
		<h5>직업·진로</h5>
	</div>
	<div class="main-cell cell-1" style="display: inline-block;">
		<b class="tit">직업심리검사</b>	
		<div class="img-link">
			<table>
				<tr>
					<td>
						<a href="https://www.work.go.kr/consltJobCarpa/jobPsyExamNew/jobPsyExamYouthList.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/1.png" alt="어린이/청소년 아이콘"><br></a>
					</td>
					<td>
						<a href="https://www.work.go.kr/consltJobCarpa/jobPsyExamNew/jobPsyExamAdultList.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/2.png" alt="대학생/성인 아이콘"><br></a>
					</td>
				</tr>
				<tr>
					<td>어린이/청소년</td>
					<td>대학생/성인</td>
				</tr>
			</table>
		</div>
	</div>&nbsp;&nbsp;&nbsp;&nbsp;
	
	<div class="main-cell cell-1" style="display: inline-block;">
		<b class="tit">직업·학과정보</b>
		<div class="img-link">
			<table>
				<tr>
					<td>
						<a href="https://www.work.go.kr/consltJobCarpa/srch/jobInfoSrch/srchJobInfo.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/3.png" alt="직업정보찾기 아이콘"><br></a>
					</td>
					<td>
						<a href="https://www.work.go.kr/consltJobCarpa/srch/schdpt/schdptSrch.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/4.png" alt="학과검색 아이콘"><br></a>
					</td>
				</tr>
				<tr>
					<td>직업정보찾기</td>
					<td>학과검색</td>
				</tr>
			</table>
		</div>
	</div>&nbsp;&nbsp;&nbsp;&nbsp;
	
	<div class="main-cell cell-1" style="display: inline-block;">
		<b class="tit">취업가이드</b>
		<div class="img-link">
			<table>
				<tr>
					<td>
						<a href="https://www.work.go.kr/empSpt/empGuide/empTrend/resumeSelfIntroGuide.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/5.png" alt="이력서·자소서 아이콘"><br></a>
					</td>
					<td>
						<a href="https://www.work.go.kr/empSpt/empGuide/empTrend/interviewGuide.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/6.png" alt="면접전략 아이콘"><br></a>
					</td>
					<td>
						<a href="https://www.work.go.kr/empSpt/empTrend/empTrend2020.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/7.png" alt="채용트렌드 아이콘"><br></a>
					</td>
					<td>
						<a href="https://www.work.go.kr/empSpt/empBlind/retrieveEmpBlind.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/8.png" alt="블라인드채용 아이콘"><br></a>
					</td>
				</tr>
				<tr>
					<td>이력서·자소서</td>
					<td>면접전략</td>
					<td>채용트렌드</td>
					<td>블라인드채용</td>
				</tr>
			</table>
		</div>
	</div>
</div>


	
</body>
</html>