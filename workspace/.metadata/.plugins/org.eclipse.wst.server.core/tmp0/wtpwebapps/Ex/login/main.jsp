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
	<%=session.getAttribute("loginuser") %>�� �ȳ��ϼ���.<br>
	���� Ȩ�������� �湮�� �ּż� �����մϴ�.<br>
	��ſ� �ð��Ǽ���...<br>
	<form action="logout.jsp" method="post">
	<input type="submit" value="�α��̿�">
	</form>
<% 
}
%>
</body>
</html>