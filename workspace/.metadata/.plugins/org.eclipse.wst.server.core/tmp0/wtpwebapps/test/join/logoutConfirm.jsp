<%@ page language="java" contentType="text/html; charset=EUC-KR" import="java.sql.*" errorPage=""
    pageEncoding="EUC-KR"%>
   <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그아웃</title>
</head>
<body>
 <% 
 session.removeAttribute("user_id");
 response.sendRedirect("login.jsp");
%>
</body>
</html>