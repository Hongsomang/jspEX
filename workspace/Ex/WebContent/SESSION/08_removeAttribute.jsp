<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>cookies &amp; session</title>
</head>
<body>
<%
	out.println("<h3>������ �����ϱ� ��<h3>");
	session.setAttribute("s_name1", "���� ���ǿ� ����� ù ��° ���̿���.");
	session.setAttribute("s_name2", "���� ���ǿ� ����� �� ��° ���̿���.");
	session.setAttribute("s_name3", "���� ���ǿ� ����� �� ��° ���̿���.");
	
	Enumeration<?> names;
	names=session.getAttributeNames();
	while(names.hasMoreElements()){
		String name=names.nextElement().toString();
		String value= session.getAttribute(name).toString();
		out.println(name+":"+value+"<br>");
	session.removeAttribute("s_name2");
	out.println("<h3>������ ������ ��<h3>");
	names=session.getAttributeNames();
	while(names.hasMoreElements()){
		String name2=names.nextElement().toString();
		String value2= session.getAttribute(name2).toString();
		out.println(name2+":"+value2+"<br>");
	}
	}
%>
</body>
</html>