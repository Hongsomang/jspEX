<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String id="Hongsomang";
String pwd="1234";
String name="성윤정";
if(id.equals(request.getAttribute("user_id"))&&pwd.equals(request.getAttribute("user_pwd"))){
	Cookie c=new Cookie("username",URLEncoder.encode(name,"UTF-8"));
	c.setMaxAge(360*24*60*60);
	response.addCookie(c);

	%>
	<h2>성공적으로 로그인하셨습니다.</h2>
	<p><a href="main.jsp">들어가기</a>
	
<% 	
}else{
	%>
	<h2>로그인에 실패했습니다.</h2>
	<p><a href="http://localhost:8081/Ex/challenge/loginform.jsp">돌아가기</a>
<%	
}
%>
</body>
</html>