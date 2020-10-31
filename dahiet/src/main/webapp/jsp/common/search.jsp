<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="assets/css/style.css" rel="stylesheet">
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
												<label>연봉</label> 
												<select>
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
					<table border="1" style="width: 100%; height: 2cm">
						<tr>
							<td rowspan="2" style="width: 2cm">회사로고</td>
							<th style="width: 2cm">회사이름</th>
							<td></td>
							<th style="width: 2cm">고용형태</th>
							<td></td>
						</tr>
						<tr>
							<th>직무</th>
							<td></td>
							<th>급여</th>
							<td></td>
						</tr>
					</table>
				</div>
			</div>

		</section>
		<!-- End Portfolio Section -->

	</main>
	<!-- End #main -->

</body>

</html>