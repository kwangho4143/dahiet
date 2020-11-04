<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form>
		<h1 align="center">취업 토크 등록 페이지</h1>
	<div style="margin: 20%, 10%, 20%, 10%" align="center">
			<table style="align-items: center">
				<tr>
					<th width="100px" height="30px">제목</th>
					<td colspan="1"><input type="text" id="title" name="title"
						style="border: white" placeholder="글 제목을 입력하세요"></td>
					<th width="100px" height="30px">작성일자</th>
					<td>(작성일자)</td>
				</tr>
				<tr>
					<th>글번호</th>
					<td>(글번호)</td>
					<th>아이디</th>
					<td>(아이디)</td>

				</tr>
				<tr>
					<th>회사</th>
					<td><input type="text" id="company" name="company"
						style="border: white" placeholder="회사이름을 입력하세요"></td>
					<th>경력</th>
					<td><input type="radio" name="newbi" value="new">경력<input
						type="radio" name="newbi" value="old">신입</td>
				</tr>
				<tr>
					<td colspan="5"><textarea id="content" name="content"
							rows="15" cols="100" placeholder="내용을 입력하세요"></textarea></td>
				</tr>
				<tr><td>
			<button>보내기</button>
			</td>
			</tr>
			</table>
	</div>
		</form>
</body>
</html>