<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
function gohome() {
	  var frm = document.idfindscreen;
	  frm.method = "post";
	  frm.action = "./home.jsp"; //넘어간화면
	  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
	 }

	 function gojoin() {
	  var frm = document.idfindscreen;
	  frm.method = "post";
	  frm.action = "./join.jsp"; //넘어간화면
	  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
	 }

	 function gologin() {
	  var frm = document.idfindscreen;
	  frm.method = "post";
	  frm.action = "./login.jsp";
	  frm.submit();
	 }

	 function goidfind() {
	  var frm = document.idfindscreen;
	  frm.method = "post";
	  frm.action = "./id_find.jsp";
	  frm.submit();
	 }

	 function gopwfind() {
	  var frm = document.idfindscreen;
	  frm.method = "post";
	  frm.action = "./pw_find.jsp";
	  frm.submit();
	 }
	 function logout() {
	  var frm = document.idfindscreen;
	  frm.method = "post";
	  frm.action = "./logoutCtl.jsp";
	  frm.submit();
	 }
 function id_search2() { //이름,이메일로 '찾기' 버튼

  var frm = document.idfindscreen;

  if (frm.name2.value.length < 1) {
   alert("이름을 입력해주세요");
   return;
  }
  if (frm.email.value.length < 1 || frm.e_domain.value.length < 1) {
   alert("이메일을 입력해주세요");
   return;
  }

  frm.method = "post";
  frm.action = "./id_searchCtl2.jsp"; //넘어간화면
  frm.submit();  }

</script>
​
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>