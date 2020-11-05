<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainResume.jsp</title>
<style type="text/css">
	table {
	  width: 850px;
	}
</style>
</head>
<body>
	<div align="center">

		<div>
			<h1>내 이력서 현황</h1>
		</div>
		<br />

		<div>
			<form id="resumeFrm" name="resumeFrm" action="" method="post" enctype="multipart/form-data">
				<div>
					<table>
						<tr height="50">
							<td height="70" colspan="5" align="right">
								<button type="button" onclick="location.href='${pageContext.request.contextPath}/jsp/resume/insertResume.jsp';" class="btn btn-danger">새 이력서 등록하기</button>&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					</table><br/>
				</div>
				
				<div>
					<table border="1">
						<tr height="50">
							<th width="150">이력서 이름</th>
							<td colspan="4">( 이력서 이름 값 불러오기 )</td>
						</tr>
						<tr height="50">
							<th width="150">작성일</th>
							<td colspan="2">( 작성일 값 불러오기 )</td>
							<td align="right">
								<a href="#" id="updateResume">
								<button type="button" class="btn btn-danger">수정하기</button>&nbsp;&nbsp;&nbsp;</a>
								<a href="#" id="deleteResume">
								<button type="button" class="btn btn-danger">삭제하기</button>&nbsp;&nbsp;&nbsp;</a>
							</td>
						</tr>
					</table><br/><br/>
				</div>
				
				<div>
					<table border="1">
						<tr height="50">
							<th width="150">이력서 이름</th>
							<td colspan="4">( 이력서 이름 값 불러오기 )</td>
						</tr>
						<tr height="50">
							<th width="150">작성일</th>
							<td colspan="2">( 작성일 값 불러오기 )</td>
							<td align="right">
								<a href="#" id="updateResume">
								<button type="button" class="btn btn-danger">수정하기</button>&nbsp;&nbsp;&nbsp;</a>
								<a href="#" id="deleteResume">
								<button type="button" class="btn btn-danger">삭제하기</button>&nbsp;&nbsp;&nbsp;</a>
							</td>
						</tr>
					</table><br/><br/>
				</div>
				
				<div>
					<table border="1">
						<tr height="50">
							<th width="150">이력서 이름</th>
							<td colspan="4">( 이력서 이름 값 불러오기 )</td>
						</tr>
						<tr height="50">
							<th width="150">작성일</th>
							<td colspan="2">( 작성일 값 불러오기 )</td>
							<td align="right">
								<a href="#" id="updateResume">
								<button type="button" class="btn btn-danger">수정하기</button>&nbsp;&nbsp;&nbsp;</a>
								<a href="#" id="deleteResume">
								<button type="button" class="btn btn-danger">삭제하기</button>&nbsp;&nbsp;&nbsp;</a>
							</td>
						</tr>
					</table><br/><br/>
				</div>
				
				<div>
					<table border="1">
						<tr height="50">
							<th width="150">이력서 이름</th>
							<td colspan="4">( 이력서 이름 값 불러오기 )</td>
						</tr>
						<tr height="50">
							<th width="150">작성일</th>
							<td colspan="2">( 작성일 값 불러오기 )</td>
							<td align="right">
								<a href="#" id="updateResume">
								<button type="button" class="btn btn-danger">수정하기</button>&nbsp;&nbsp;&nbsp;</a>
								<a href="#" id="deleteResume">
								<button type="button" class="btn btn-danger">삭제하기</button>&nbsp;&nbsp;&nbsp;</a>
							</td>
						</tr>
					</table><br/><br/>
				</div>
				
			</form>
		</div>

	</div>
</body>
</html>