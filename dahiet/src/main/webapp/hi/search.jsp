<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Portfolio - Sailor Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
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

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Sailor - v2.2.0
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<nav class="nav-menu d-none d-lg-block">
						<ul>
							<li><h2>상세 검색</h2></li>
							<li><form action="" method="post">
									<input type="text" id="search" name="search">
									<button type="button" style="border: 0px; background: none">
										<img src="${pageContext.request.contextPath}/images/search.png" height="20" width="20"
											alt="submit">
									</button>
								</form></li>
							<li class="drop-down"><a href="#">지역 선택</a>
								<ul>
									<li>
										<div>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
										</div>
										<div>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
										</div>
										<div>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
											<label><input type="checkbox" name="color">지역</label>
										</div>
									</li>
								</ul></li>

							<li class="drop-down"><a href="#">업종 선택</a>
								<ul>
									<li>
										<div>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
										</div>
										<div>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
										</div>
										<div>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
											<label><input type="checkbox" name="color">업종</label>
										</div>
									</li>
								</ul></li>
							<li class="drop-down"><a href="#">상세 선택</a>
								<ul>
									<li><form action="">
											<div>
												<label>연봉</label> <select>
													<option>2,000만원 이상</option>
													<option>3,000만원 이상</option>
													<option>4,000만원 이상</option>
													<option>5,000만원 이상</option>
													<option>6,000만원 이상</option>
													<option>7,000만원 이상</option>
													<option>8,000만원 이상</option>
													<option>9,000만원 이상</option>
													<option>10,000만원 이상</option>
												</select>
												<vr />
												<label>제외 검색어</label> <input type="text">
												<button type="button" style="border: 0px; background: none">
													<img src="${pageContext.request.contextPath}/images/search.png" height="20" width="20"
														alt="submit">
												</button>
											</div>
											<hr>
											<div>
												<label>기업 형태</label> <label><input type="checkbox"
													name="color"> 대기업</label> <label><input
													type="checkbox" name="color"> 중견기업</label> <label><input
													type="checkbox" name="color"> 중소기업</label> <label><input
													type="checkbox" name="color"> 외국계</label> <label><input
													type="checkbox" name="color"> 강소기업</label> <label><input
													type="checkbox" name="color"> 공기업</label>
											</div>
											<div>
												<hr>
												<label>근무 형태</label><label><input type="checkbox"
													name="color"> 정직원</label> <label><input
													type="checkbox" name="color"> 계약직</label> <label><input
													type="checkbox" name="color"> 아르바이트</label> <label><input
													type="checkbox" name="color"> 인턴직</label> <label><input
													type="checkbox" name="color"> 파견직</label>
											</div>
										</form></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio">
			<div class="container">

				<div class="row">
					<div class="col-lg-12 d-flex justify-content-center">
						<ul id="portfolio-flters">
							<li data-filter="*" class="filter-active">전체 보기</li>
							<li data-filter=".filter-app">신입</li>
							<li data-filter=".filter-card">경력</li>
						</ul>
					</div>
				</div>
				<div class="row portfolio-container">
				<table border="2">
				<tr>
				<td>dd</td><td>dd</td>
				
				</tr>
				
				
				
				</table>
				</div>
			</div>

		</section>
		<!-- End Portfolio Section -->

	</main>
	<!-- End #main -->



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