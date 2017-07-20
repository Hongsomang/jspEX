<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String id="pinksung";
	String pwd="1234";
	String name="성윤정";
	
	if(id.equals(request.getParameter("user_id"))&& pwd.equals(request.getParameter("user_pwd"))){
		session.setAttribute("loginuser",name);
		response.sendRedirect("main.jsp");
		
	}
	else{
		response.sendRedirect("loginForm.jsp");
		
	}
	%>
	
</body>
</html>