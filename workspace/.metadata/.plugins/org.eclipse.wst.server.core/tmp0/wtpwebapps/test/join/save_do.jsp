<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("EUC-KR");

	String user_id = request.getParameter("user_id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String stu_code = request.getParameter("stu_code");

	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		//String DB_URL = "jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=utf8";
		
		Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "jspuser", "1111");
		String sql = "INSERT INTO login_data(user_id, pwd, name, stu_code) values(?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		
		pstmt.setString(1, user_id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, stu_code);
		pstmt.executeUpdate();

		pstmt.close();
		con.close();

	} catch (Exception e) {
		System.out.println(user_id + pwd + name + stu_code); 
		System.out.println(e);
	}
	
%>
입력성공
<a href="login.jsp">로그인</a>
