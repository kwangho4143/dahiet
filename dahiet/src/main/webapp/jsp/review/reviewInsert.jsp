<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
HttpSession session = request.getSession();
String id = session.getAttribute("id");
</script>
<body>
	<div style="padding-left: 130px; background-color: #f8f9fa; height: 70px" class="d-flex justify-content-between align-items-center">
			<h2>취업 토크 등록 페이지</h2>
				</div>
				<hr>
	<form id="reviewFrm" name="reviewFrm"
		action="${pageContext.request.contextPath}/ReviewInsert.do"
		method="post" enctype="multipart/form-data">
		<div style="margin: 20%, 10%, 20%, 10%" align="center">
			<table border="1" style="align-items: center">
				<tr align="center">
					<td style="display: none" colspan="1"><input type="text" id="id" name="id"
						style="border: white" value="익명"></td>
					<th colspan="1" width="100px" height="30px">제목</th>
					<td colspan="1"><input type="text" id="title" name="title"
						style="border: white; width: 100%" placeholder="글 제목을 입력하세요"></td>
					<th>비밀번호</th>
					<td style="width: 3cm"><input type="password" id="password" name="password"
						style="border: white; width: 100%" placeholder="비밀번호 입력"></td>
					<th>회사</th>
					<td><input type="text" id="company" name="company"
						style="border: white; width: 100%" placeholder="회사이름을 입력하세요"></td>
					<th>경력</th>
					<td><input type="radio" name="newbi" value="new" checked>신입 &nbsp&nbsp<input
						type="radio" name="newbi" value="old">경력</td>
				<tr>
					<td colspan="8"><textarea id="content" name="content"
							rows="20" cols="120" placeholder="내용을 입력하세요"></textarea></td>
				</tr>
				<tr>
					<td colspan="8">
						<button>보내기</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>