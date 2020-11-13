<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function putpass() {
passwor = prompt('비밀번호를 입력해주세요.','');
location.href="ReviewDetailUp.do?ac=upd&no=${vo.no}&password="+passwor
}

function putpassdel() {
	passwor = prompt('비밀번호를 입력해주세요.','');
location.href="ReviewDetailUp.do?ac=del&no=${vo.no }&password="+passwor
}




</script>
</head>
<body>
<body>
	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h2>취업 토크 상세 페이지</h2>
			<p><button type="button" onclick="location.href ='${pageContext.request.contextPath}/ReviewAction.do'" class="btn btn-sm btn-danger">토크목록</button>
			<button type="button" onclick="putpass();" class="btn btn-sm btn-danger">토크수정</button>
			<button type="button" onclick="putpassdel();" class="btn btn-sm btn-danger">토크삭제</button>
				</p>
		</div>
	
		<hr />
		<form id="reviewDeFrm" name="reviewDeFrm"
			enctype="multipart/form-data">
			<div style="margin: 20%, 10%, 20%, 10%; min-height: 500px" align="center">
				<table border="1" style="align-items: center; min-height: 600px">
					<tr align="center">
						<th width="100px" height="30px">제목</th>
						<td colspan="5" >${vo.title }</td>
						<th width="100px" height="30px">글번호</th>
						<td width="80px">${vo.no }</td>
						</tr>
						<tr align="center">
						<th width="100px" height="30px">아이디</th>
						<td width="80px">${vo.id }</td>

						<th width="100px" height="30px">회사</th>
						<td width="80px">${vo.company }</td>
						<th width="100px" height="30px">경력</th>
						<td width="80px">${vo.newbi }</td>
						<th width="100px" height="30px">작성일자</th>
						<td width="100px">${vo.redate }</td>
					<tr style="min-height: 400px">
						<td valign="top" colspan="8">${vo.content}</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</body>
</html>