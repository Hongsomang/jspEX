<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
<%
	request.setCharacterEncoding("ER-KR");

	String user_key=request.getParameter("user_key");
	String name=request.getParameter("name");
	String user_id=request.getParameter("user_id");
	String pwd=request.getParameter("pwd");
	String gender=request.getParameter("gender");
	
	try{
		Class.forName("come.mysql.jdbc.Driver");
		
		Connection conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/join","jspuser","1111");
		String sql="INSERT INTO joins(user_key,name,user_id,pwd,gender) value(?,?,?,?,?,?)";
		
		
		
	}catch (Exception e){
		
	}
	
%>