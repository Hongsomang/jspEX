<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Cookie &amp; Session</title>
</head>
<body>
<%
	Cookie c=new Cookie("id","pinksung");
c.setMaxAge(365*24*60*60);
response.addCookie(c);
response.addCookie(new Cookie("pwd","test1234"));
response.addCookie(new Cookie("age","20"));

%>
<h3>쿠키 설정</h3>
</body>
</html>