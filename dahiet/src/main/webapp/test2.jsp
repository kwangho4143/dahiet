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


#recruitImg {
	width: 200px;
	height: 150px;
}

#recuit {
	border: 1px;
}

#recuits:hover {
	background-color: yellow;
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
	<span id="recuits">
	<c:forEach var="mainlist" items="${mainlists}">
		<span id="recuit" onclick="location.href='${pageContext.request.contextPath}/RecruitDetail.do?no=${mainlist.recruit_seq}'">
			<img id="recruitImg" alt="회사로고" src="${pageContext.request.contextPath}/images/${mainlist.img}">
			<br>회사이름 ${mainlist.name }<br><b>공고제목 ${mainlist.title }</b>
		</span>
	</c:forEach>
	</span>
</div>

	
	
</body>
</html>