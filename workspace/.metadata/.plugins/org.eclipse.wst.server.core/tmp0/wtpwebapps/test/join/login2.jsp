<%@ page language="java" contentType="text/html; charset=EUC-KR" 
    pageEncoding="EUC-KR" import="java.sql.*"  errorPage="" %>
<%@ page sessoin="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
String user_id=request.getParameter("user_id");
String pwd=request.getParameter("pwd");

user_id=new String(user_id.getBytes("8859_1"),"utf-8");
pwd=new String(pwd.getBytes("8859_1"),"utf-8");
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
Boolean isLogin=false;
try{
	Class.forName("com.mysql.jdbv.Driver");
	conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "jspuser", "1111");
	stmt=(Statement) conn.createStatement();
	rs=stmt.executeQuery("select * from login_data where user_id='"+user_id+"'and pwd='"+pwd+"'");
	while(rs.next()){
		session.setMaxInactiveInterval(3600);
		session.setAttribute("user_id","true");
		
		System.out.print(user_id);
		System.out.print("회원님 로그인이 처리되었습니다.");
		isLogin=true;
		%>
		<br/>
		<a href="login.jsp">로그인 페이지로 이동</a>
		<%
		
	}
	if(!isLogin){
		System.out.print("회원정보가 없습니다.");
		%>
		<input type="button" name="input" value="뒤로가기" onClick="javascript:self.location='http://localhost:8081/test/join/login.jsp';"></input>
			
	<%
	}
	conn.close();

	
}catch (Exception e){
	System.out.println(e);
	
}

%>