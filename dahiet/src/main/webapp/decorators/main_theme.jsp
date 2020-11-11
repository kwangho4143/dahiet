<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>JobZone</title>
<meta content="" name="description">
<meta content="" name="keywords">

<link href="${pageContext.request.contextPath}/assets/img/apple-icon.png" rel="icon">


<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">


<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

<decorator:head />
<style>
#main {
	min-height: 500px;

}
</style>
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div class="container d-flex align-items-center">

			<h1 class="logo">
				<a href="${pageContext.request.contextPath}/test.jsp">Job Zone</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav class="nav-menu d-none d-lg-block">

				<ul>

					<li><a href="${pageContext.request.contextPath}/SearchAction.do">채용정보</a>
					<li><a href="#">기업정보</a></li>
					<li><a href="${pageContext.request.contextPath}/ReviewAction.do">취업토크</a></li>
					<li><a href="#">고객센터</a></li>

					<li></li>
					<li><form action="" method="post">
							<input type="text" id="search" name="search">
							<button type="button" style="border: 0px; background: none">
								<img src="${pageContext.request.contextPath}/images/search.png" height="20" width="20" alt="submit">
							</button>
						</form></li>
					<c:if test = "${sessionScope.major ne null}">
					<li><a href="${pageContext.request.contextPath}/ResumeList.do">이력서 관리</a></li>
					</c:if>
					<c:if test = "${sessionScope.link ne null}">
					<li><a href="${pageContext.request.contextPath}/showRecruitList.do">공고관리</a></li>
					</c:if>
					<c:if test = "${sessionScope.id eq null}">
					<li>  <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/jsp/user/loginForm.jsp';" >로그인 / 가입</button></li>
					</c:if>
					<c:if test = "${sessionScope.birth ne null}">
						<li><button type="button" onclick="location.href='${pageContext.request.contextPath}/UserMypage.do';" class="get-started-btn ml-auto" >마이페이지</button></li>
					</c:if>
					<c:if test = "${sessionScope.no ne null}">
						<li><button type="button" onclick="location.href='${pageContext.request.contextPath}/companyMypage.do';" class="get-started-btn ml-auto" >마이페이지</button></li>
					</c:if>
					<c:if test = "${sessionScope.id ne null}">
						<li><button type="button" onclick="location.href='${pageContext.request.contextPath}/logOut.do';" class="get-started-btn ml-auto" >로그아웃</button></li>
					</c:if>
				</ul>

			</nav>
			<!-- .nav-menu -->
		</div>
	</header>
	<!-- End Header -->
	<body>
	<section id="about" class="about">
		<main id="main">
			<br> <br>
			<decorator:body />
		</main>
	</section>
	</body>
	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6">
						<div class="footer-info">
							<h3>Job Zone</h3>
							<p>
								대구 광역시 중구 <br> 상서동 22-2<br> <br> <strong>Tel:</strong>
								053-421-2460<br> <strong>대표 Email:ask@yedam.ac</strong> <br>
							</p>
							<div class="social-links mt-3">
								<a href="http://www.daeguoracle.com/" class="예담 직업 전문학교"><i
									class="bx bxl-twitter"></i></a> <a href="#" class="facebook"><i
									class="bx bxl-facebook"></i></a> <a href="#" class="instagram"><i
									class="bx bxl-instagram"></i></a> <a href="#" class="google-plus"><i
									class="bx bxl-skype"></i></a> <a href="#" class="linkedin"><i
									class="bx bxl-linkedin"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>연관 사이트</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a
								href="http://www.moel.go.kr/index.do">고용노동부</a></li>
							<li><i class="bx bx-chevron-right"></i> <a
								href="https://www.work.go.kr/seekWantedMain.do">워크넷</a></li>
							<li><i class="bx bx-chevron-right"></i> <a
								href="https://www.jobkorea.co.kr/">잡코리아</a></li>
							<li><i class="bx bx-chevron-right"></i> <a
								href="https://www.saramin.co.kr/zf_user/">사람인</a></li>
							<li><i class="bx bx-chevron-right"></i> <a
								href="http://www.hrd.go.kr/hrdp/ma/pmmao/indexNew.do">HRD-Net</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>사이트 바로가기</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>

					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>Sailor</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/sailor-free-bootstrap-theme/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>

</html>