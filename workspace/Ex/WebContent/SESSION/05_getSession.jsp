<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Cookies &amp; Session</title>
</head>
<body>
	<h3>세션 값 얻어오리</h3>
	<%
		String id=(String) session.getAttribute("id");
		String pwd=(String) session.getAttribute("pwd");
		Integer age=(Integer) session.getAttribute("age");
	%>
	id: <%=id %><br>
	pwd: <%=pwd %><br>
	age: <%=age %><br>
</body>
</html>