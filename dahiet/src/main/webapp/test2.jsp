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
}

.recruit-each {
	width: 185px;
	height: 180px;
	position: relative;
	border-top: 5px solid #bbb;
	padding: 5px;
	margin: 5px;
	display: inline-block;
/* 	float: left; */
}

#recruitImg {
	width: 170px;
	height: 67px;
	margin: 5px;
}

.info-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

.info-cell {
	max-width: 200px;
	height: 270px;
	border-top: 5px solid #bbb;
	padding: 10px;
	position: relative;
}

.main-job-cont {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

.main-job-cont .main-cell {
	min-height: 260px;
	padding: 24px 24px 0 24px;
}

.main-cell:first-child {
	margin-left: 0;
}

.main-cell .cell-1 {
	width: 275px;
}

.img-links {
	display: inline-block;
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
			<a href="${pageContext.request.contextPath}/RecruitDetail.do?no=${simple.recruit_seq}">
				<img id="recruitImg" alt="회사로고" src="${pageContext.request.contextPath}/images/${mainlist.img}">
				<p>${mainlist.name}</p><b>${mainlist.title}</b>
			</a>
		</div>
	</c:forEach>
</div><br><br>





<div class="main-job-cont">	
	<div>
		<h5>직업·진로</h5>
	</div>
	<div class="main-cell cell-1">
		<p class="tit">직업심리검사</p>
		<div class="img-link">
			<table>
				<tr>
					<td>
						<a href="https://www.work.go.kr/consltJobCarpa/jobPsyExamNew/jobPsyExamYouthList.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/1.png" alt="어린이/청소년 아이콘"><br></a>
					</td>
					<td>
						<a href="https://www.work.go.kr/consltJobCarpa/jobPsyExamNew/jobPsyExamAdultList.do" target="_blank" onclick="">
							<img src="${pageContext.request.contextPath}/images/2.png" alt="대학생/성인 아이콘"><br>
					</td>
				</tr>
				<tr>
					<td>어린이/청소년</td>
					<td><span class="txt" style="font-size: small;">대학생/성인</span></td>
				</tr>
			</table>
		</div>
	</div>
</div>









	
	
</body>
</html>