<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("EUC-KR");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");

	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		//String DB_URL = "jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=utf8";
		
		Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "jspuser", "1111");
		String sql = "INSERT INTO login_data(id, pwd, email, phone) values(?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, email);
		pstmt.setString(4, phone);
		pstmt.executeUpdate();

		pstmt.close();
		con.close();

	} catch (Exception e) {
		System.out.println(id + pwd + email + phone); 
		System.out.println(e);
	}
	
