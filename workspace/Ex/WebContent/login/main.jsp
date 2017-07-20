<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP</title>
</head>
<body>
<%
if(session.getAttribute("loginuser")==null){
	response.sendRedirect("loginForm.jsp");
}else{
%>
	<%=session.getAttribute("loginuser") %>님 안녕하세요.<br>
	저희 홈페이지에 방문해 주셔서 감사합니다.<br>
	즐거운 시간되세요...<br>
	<form action="logout.jsp" method="post">
	<input type="submit" value="로그이웃">
	</form>
<% 
}
%>
</body>
</html>