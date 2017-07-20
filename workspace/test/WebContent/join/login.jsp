<%@ page language="java" contentType="text/html; charset=EUC-KR" import="java.sql.*" errorPage=""
    pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 페이지</title>
<script>
function logging(){
	if(document.loginForm.user_id.value==""){
		alert("아이디를 입력해주세요.");
		document.loginForm.id.focus();
		}
	else if(document.loginForm.pwd.value==""){
		alert("비밀번호를 입력해주세요");
		document.loginForm.pwd.focus();
		}
	else {
		document.loginForm.submit();
		document.login.action="NewFile.jsp";
	}
}
</script>
</head>
<body>
<%
session=request.getSession(true);
if(session.getAttribute("user_id")!=null&&((String)session.getAttribute("user_id")).equals("true")){
	System.out.println("로그인 상태입니다.");

%>
<input type="button" name="input" value="로그아웃" onClick="javascript:self.location='http://localhost:8081/test/join/logoutConfirm.jsp';"></input>
<%
}else{
%>
<form name="loginForm" method="post" action="login2.jsp">
<h3>로그인</h3>
<table border=2>
<tr>
<td>아이디</td>
<td><input type="text" name="user_i d"></input></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="pwd"></input></td>
</tr>
</table>
<input type="button" value="로그인 " onClick="logging()"></input> <!--onClick에 메인페이지 넣어줘야됨  -->
<input type="button" value="회원가입" onClick="javascript:self.location='http://localhost:8081/test/join/join.jsp';"></input>

</form>
<%
}
%>
</body>
</html>