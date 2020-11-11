<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
span.abc {
	height: 28px;
	margin-right: 10px;
	border-bottom: 3px solid lightgray; 
}
</style>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
	<main id="main">
		<section id="breadcrumbs" class="breadcrumbs">
			<form action="SearchAction.do">
				<div class="container">
					<div class="d-flex justify-content-between align-items-center">
						<nav class="nav-menu d-none d-lg-block">
							<ul>
								<li><h2>상세 검색</h2></li>
								<li><input type="text" id="search" name="search">
									<button type="submit" style="border: 0px; background: none">
										<img
											src="${pageContext.request.contextPath}/images/search.png"
											height="20" width="20" alt="submit">
									</button></li>
								<li class="drop-down"><a href="#">지역 선택</a>
									<ul>
										<li>
											<div style="white-space: normal; margin: 0.5cm; width: 500px">
												<c:forEach var="code" items="${codes}">
													<label><input type="checkbox" name="loc"
														value="${code.codename}" onchange="showloc(this.value)">${code.codevalue}</label>
												</c:forEach>
											</div>
										</li>
									</ul></li>
								<li class="drop-down"><a href="#">업종 선택</a>
									<ul>
										<li>
											<div style="white-space: normal; margin: 0.5cm; width: 500px">
												<c:forEach var="itemcode" items="${itemcodes}">
													<label><input type="checkbox" name="item"
														value="${itemcode.itemid }"
														onchange="showitem(this.value)">${itemcode.itemname}</label>

												</c:forEach>
											</div>
										</li>
									</ul></li>
								<li class="drop-down"><a href="#">상세 선택</a>
									<ul>
										<li>
											<div>
												<label>연봉</label> <select name="salary" id="salary">
													<option value="0">전체</option>
													<option value="2000">2,000만원 이상</option>
													<option value="3000">3,000만원 이상</option>
													<option value="4000">4,000만원 이상</option>
													<option value="5000">5,000만원 이상</option>
													<option value="6000">6,000만원 이상</option>
													<option value="7000">7,000만원 이상</option>
													<option value="8000">8,000만원 이상</option>
													<option value="9000">9,000만원 이상</option>
													<option value="10000">10,000만원 이상</option>
												</select> <img
													src="${pageContext.request.contextPath}/images/search.png"
													height="20" width="20" alt="submit">
											</div>
											<hr>
											<div>
												<label>기업 형태</label> <label><input type="checkbox"
													name="type" value="c1"> 대기업</label> <label><input
													type="checkbox" name="type" value="c2"> 중견기업</label> <label><input
													type="checkbox" name="type" value="c3"> 중소기업</label> <label><input
													type="checkbox" name="type" value="c4"> 외국계</label> <label><input
													type="checkbox" name="type" value="c5"> 강소기업</label> <label><input
													type="checkbox" name="type" value="c6"> 공기업</label>
											</div>
											<div>
												<hr>
												<label>근무 형태</label> <label><input type="checkbox"
													name="emp_type" value="a1"> 정규직</label> <label><input
													type="checkbox" name="emp_type" value="a2"> 계약직</label> <label>
													<input type="checkbox" name="emp_type" value="a3">
													아르바이트
												</label> <label><input type="checkbox" name="emp_type"
													value="a4"> 인턴직</label> <label><input
													type="checkbox" name="emp_type" value="a5"> 파견직</label>
											</div>
										</li>
									</ul></li>
							</ul>
						</nav>
					</div>
				</div>
			</form>
		</section>
		<section id="portfolio" class="portfolio">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 d-flex">
						<div style="margin-left: 0%">
							<h5 align="left">선택된 지역</h5>
							<div id="selloc"></div>
							<hr>
							<h5>선택된 업종</h5>
							<div id="selitem">&nbsp;
							</div>
							<hr>
						</div>
						<script>
							function showloc(str) {
								var loc = $(event.target).parent().text();
								if ($(event.target).is(":checked") == false) {
									$('a:contains("' + loc + '")').remove();
									return;
								} else {
									$('#selloc').append(
											$('<span>').addClass('abc').text(loc))
								}
							}

							function showitem(str) {
								var item = $(event.target).parent().text();
								if ($(event.target).is(":checked") == false) {
									$('a:contains("' + item + '")').remove();
									return;
								} else {
									$('#selitem')
											.append(
													$('<span>').addClass('abc')
															.text(item))
								}
							}
						</script>

					</div>
					<c:forEach var="simple" items="${simples}">
						<div>
							<table border="1" style="width: 100%; height: 3cm">
								<tr>
									<td rowspan="3" style="width: 1px; height: 2cm"><img
										style="margin: 1px" alt="회사로고"
										src="${pageContext.request.contextPath}/images/${simple.img}"></td>

									<th style="width: 1cm">공고이름</th>
									<td colspan="3" style="width: 2cm"><a
										href="${pageContext.request.contextPath}
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
			</div>
		</section>
	</main>
</body>
</html>