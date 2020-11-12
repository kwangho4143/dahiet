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
button.btn btn-xs btn-danger {
-webkit-tap-highlight-color: rgba(0,0,0,0);
box-sizing: border-box;
font: inherit;
overflow: visible;
text-transform: none;
font-family: inherit;
display: inline-block;
font-weight: 400;
text-align: center;
white-space: nowrap;
vertical-align: middle;
touch-action: manipulation;
cursor: pointer;
user-select: none;
border: 1px solid transparent;
color: #fff;
background-color: #d9534f;
padding: 1px 5px;
font-size: 12px;
line-height: 1.5;
border-radius: 3px;
text-shadow: 0 -1px 0 rgba(0,0,0,.2);
box-shadow: inset 0 1px 0 rgba(255,255,255,.15),0 1px 1px rgba(0,0,0,.075);
background-image: linear-gradient(to bottom,#d9534f 0,#c12e2a 100%);
background-repeat: repeat-x;
border-color: #b92c28;
margin: 5px 0;
}
li.duty {
	color: #000;
	margin: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	position: relative;
	padding: 13px 15px 20px;
	width: 100%;
	height: 109px;
	border: 1px solid #ddd;
	border-top: 0;
	box-sizing: border-box;
	background: #fcfcfc;
}

div.banner_list {
	color: #000;
	margin: 0;
	padding: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
}

div.wrap_list_banner {
	color: #000;
	margin: 0;
	padding: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	margin-top: 33px;
	width: 100%;
}

div.area_title {
	color: #000;
	margin: 0;
	padding: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	position: relative;
	margin-bottom: 10px;
	letter-spacing: -1px;
}

h2.tit_banner {
	color: #000;
	margin: 0;
	padding: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	position: relative;
	margin-bottom: 10px;
	letter-spacing: -1px;
}

ul.list_product {
	color: #000;
	margin: 0;
	padding: 0;
	list-style: none;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	background-color: #f1f4ff;
}

li.item {
	color: #000;
	padding: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	position: relative;
	float: left;
	padding-top: 143px;
	margin: -1px 0 0 -1px;
	height: 176px;
	border: 1px solid gray;
	box-sizing: border-box;
	font-size: 14px;
	background-color: #fff;
	transition: box-shadow 0.5s, transform 0.5s;
	width: 316px;
}

a.link {
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	font-size: 14px;
	text-decoration: none;
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2;
	padding: 20px;
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	color: #222;
}

span.logo {
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	font-size: 14px;
	color: #222;
	display: inline-block;
	position: relative;
	z-index: 5;
	text-align: left;
	vertical-align: middle;
}

span.corp {
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	display: block;
	margin-top: 10px;
	font-size: 14px;
	letter-spacing: -1px;
	line-height: 18px;
	color: #425ad4;
}

strong.tit {
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	font-style: normal;
	font-weight: bold;
	display: block;
	overflow: hidden;
	margin-top: 3px;
	font-size: 14px;
	letter-spacing: -0.5px;
	line-height: 20px;
	color: #444;
	text-overflow: ellipsis;
	white-space: nowrap;
}

ul.desc {
	font-size: 14px;
	color: #222;
	margin: 0;
	padding: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	margin-top: 4px;
}

li.company_local ellipsis {
	margin: 0;
	padding: 0;
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	float: left;
	margin-left: 10px;
	font-size: 12px;
	color: #949494;
	letter-spacing: -1px;
	line-height: 17px;
}

button.sri_btn_xs {
	list-style: none;
	font-family: inherit;
	font-size: inherit;
	font-weight: inherit;
	font-style: inherit;
	line-height: normal;
	background: transparent;
	padding: 0;
	height: 18px;
	border: 0;
	box-sizing: border-box;
	text-align: center;
	vertical-align: top;
	cursor: pointer;
	overflow: visible;
	float: right;
	position: relative;
	z-index: 3;
	margin: 0 19px 0 0;
}

span.date {
	font-family: "Malgun Gothic", dotum, gulim, sans-serif;
	list-style: none;
	display: inline-block;
	float: right;
	position: relative;
	z-index: 1;
	height: 16px;
	font-size: 12px;
	color: #949494;
	letter-spacing: -0.5px;
	line-height: 16px;
	vertical-align: top;
	margin-right: 9px;
}

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
			<form action="SearchAction.do">
		<section id="breadcrumbs" class="breadcrumbs">
				<div class="container">
					<div class="d-flex justify-content-between align-items-center">
						<nav class="nav-menu d-none d-lg-block">
							<ul>
								<li><h2>상세 검색</h2></li>
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
									</ul></li>
								<li class="drop-down"><a href="#">담당 업무 선택</a>
									<ul>
										<li>
											<div style="white-space: normal; margin: 0.5cm; width: 500px">
												<c:forEach var="workid" items="${witemcodes}">
													<label><input type="checkbox" name="work"
														value="${workid.itemid }" onchange="showwork(this.value)">${workid.itemname}</label>
												</c:forEach>
											</div>
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
		</section>
		<section id="portfolio" class="portfolio">
			<div style="align-items: center">
				<div class="row">
					<div class="col-lg-12 d-flex">
								<div class="row col-12" >
											<div id="selloc" class="col"></div>
											<div id="selitem" class="col"></div>
											<div id="selwork" class="col"></div>
											<div class="col">
											<button type="submit" class="btn btn-xs btn-danger">검색하기</button>
											</div>
								</div>
								
						<script>
							function showloc(str) {
								var loc = $(event.target).parent().text();
								if ($(event.target).is(":checked") == false) {
									$('span:contains("' + loc + '")').remove();
									return;
								} else {
									$('#selloc').append(
											$('<span>').addClass('abc').text(
													loc))
								}
							};

							function showitem(str) {
								var item = $(event.target).parent().text();
								if ($(event.target).is(":checked") == false) {
									$('span:contains("' + item + '")').remove();
									return;
								} else {
									$('#selitem').append(
											$('<span>').addClass('abc').text(
													item))
								}
							};
							function showwork(str) {
								var work = $(event.target).parent().text();
								if ($(event.target).is(":checked") == false) {
									$('span:contains("' + work + '")').remove();
									return;
								} else {
									$('#selwork').append(
											$('<span>').addClass('abc').text(
													work))
								}
							};
						</script>
					</div>

					<c:forEach var="simple" items="${simples}">
						<div id="banner_list" class="banner_list">
							<div class="wrap_list_banner">
								<ul class="list_product">
									<li class="item"><a
										href="${pageContext.request.contextPath}/RecruitDetail.do?no=${simple.recruit_seq}"
										target="_blank"
										onclick="try{s_trackApply(this, 'area_recruit', 'section_favor_001', '', 101, {});}catch(e){};"
										onfocus="this.blur();" title="${simple.title}"
										onmousedown="Saramin.clickAds(39004634, 'ads_category=section_favor_001')"
										class="link" rel="sponsored"> <span class="logo"><img
												src="${pageContext.request.contextPath}/images/${simple.img}"
												border="0" width="110" height="38"></span> <span class="corp">${simple.name}</span>
											<strong class="tit">${simple.title}</strong>
											<ul class="desc">
												<li>${simple.work}</li>
												<li>${simple.emp_type}</li>
												<li class="company_local ellipsis">${simple.salary}만원</li>
											</ul>
									</a>
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
			</form>
	</main>
</body>
</html>