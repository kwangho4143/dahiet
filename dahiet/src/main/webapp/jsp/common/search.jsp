<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
										<img
											src="${pageContext.request.contextPath}/images/search.png"
											height="20" width="20" alt="submit">
									</button>
								</form></li>
							<li class="drop-down"><a href="#">지역 선택</a>
								<ul>
									<li>
										<div style="white-space: normal; margin: 0.5cm; width: 500px">
											<c:forEach var="code" items="${codes}">
												<label><input type="checkbox" name="loc"
													value="${code.codename }">${code.codevalue}</label>
											</c:forEach>
											${code.codename }
										</div>
									</li>
								</ul></li>

							<li class="drop-down"><a href="#">업종 선택</a>
								<ul>
									<li>
										<div style="white-space: normal; margin: 0.5cm; width: 500px">
											<c:forEach var="itemcode" items="${itemcodes}">
												<label><input type="checkbox" name="item"
													value="${itemcode.itemid }">${itemcode.itemname}</label>

											</c:forEach>
										</div>
									</li>
								</ul></li>
							<li class="drop-down"><a href="#">상세 선택</a>
								<ul>
									<li><form action="">
											<div>
												<label>연봉</label> <select name="salary" id="salary">
													<option value="2000">2,000만원 이상</option>
													<option value="3000">3,000만원 이상</option>
													<option value="4000">4,000만원 이상</option>
													<option value="5000">5,000만원 이상</option>
													<option value="6000">6,000만원 이상</option>
													<option value="7000">7,000만원 이상</option>
													<option value="8000">8,000만원 이상</option>
													<option value="9000">9,000만원 이상</option>
													<option value="10000">10,000만원 이상</option>
												</select> <label>제외 검색어</label> <input type="text">
												<button type="button" style="border: 0px; background: none">
													<img
														src="${pageContext.request.contextPath}/images/search.png"
														height="20" width="20" alt="submit">
												</button>
											</div>
											<hr>
											<div>
												<label>기업 형태</label> <label><input type="checkbox"
													name="color"> 대기업</label> <label><input
													type="checkbox" name="type" value="mihi"> 중견기업</label> <label><input
													type="checkbox" name="type" value="mi"> 중소기업</label> <label><input
													type="checkbox" name="type" value="fo"> 외국계</label> <label><input
													type="checkbox" name="type" value="stsm"> 강소기업</label> <label><input
													type="checkbox" name="type" value="gove"> 공기업</label>
											</div>
											<div>
												<hr>
												<label>근무 형태</label>
												<label><input type="checkbox" name="emp_type" value="full"> 정규직</label> 
												<label><input type="checkbox" name="emp_type" value="cont"> 계약직</label> 
												<label><input type="checkbox" name="emp_type" value="part"> 아르바이트</label>
												<label><input type="checkbox" name="emp_type" value="inte"> 인턴직</label> 
												<label><input type="checkbox" name="emp_type" value="disp"> 파견직</label>
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


				<c:forEach var="simple" items="${simples}">
					<div>
						<table border="1" style="width: 100%; height: 3cm">
							<tr>
								<td rowspan="3" style="width: 1cm; height: 2cm" ><img alt="회사로고"
									src="${pageContext.request.contextPath}/images/"></td>

								<th style="width: 1cm">공고이름</th>
								<td colspan="3" style="width: 2cm"><a href="${pageContext.request.contextPath}
								/RecruitDetail.do?no=${simple.recruit_seq}">${simple.title}</a></td>
							</tr>
							<tr>
								<th style="width: 1cm">회사이름</th>
								<td style="width: 4cm">${simple.name}</td>


								<th style="width: 1cm">고용형태</th>
								<td style="width: 4cm">${simple.emp_type}</td>
							</tr>
							<tr>
								<th style="width: 1cm">직무</th>
								<td>${simple.work}</td>
								<th style="width: 1cm">급여</th>
								<td>${simple.salary}</td>
							</tr>
						</table>
					</div>
				</c:forEach>
			</div>

		</section>
		<!-- End Portfolio Section -->

	</main>
	<!-- End #main -->

</body>

</html>