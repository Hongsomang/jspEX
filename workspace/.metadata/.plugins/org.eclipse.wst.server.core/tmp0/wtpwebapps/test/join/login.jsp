<%@ page language="java" contentType="text/html; charset=EUC-KR" import="java.sql.*" errorPage=""
    pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��� ������</title>
<script>
function logging(){
	if(document.loginForm.user_id.value==""){
		alert("���̵� �Է����ּ���.");
		document.loginForm.id.focus();
		}
	else if(document.loginForm.pwd.value==""){
		alert("��й�ȣ�� �Է����ּ���");
		document.loginForm.pwd.focus();
		}
	else {
		document.loginForm.submit();
		document.login.action="NewFile.jsp";
	}
}
</script>
</head>
<body>
<%
session=request.getSession(true);
if(session.getAttribute("user_id")!=null&&((String)session.getAttribute("user_id")).equals("true")){
	System.out.println("�α��� �����Դϴ�.");

%>
<input type="button" name="input" value="�α׾ƿ�" onClick="javascript:self.location='http://localhost:8081/test/join/logoutConfirm.jsp';"></input>
<%
}else{
%>
<form name="loginForm" method="post" action="login2.jsp">
<h3>�α���</h3>
<table border=2>
<tr>
<td>���̵�</td>
<td><input type="text" name="user_i d"></input></td>
</tr>
<tr>
<td>��й�ȣ</td>
<td><input type="password" name="pwd"></input></td>
</tr>
</table>
<input type="button" value="�α��� " onClick="logging()"></input> <!--onClick�� ���������� �־���ߵ�  -->
<input type="button" value="ȸ������" onClick="javascript:self.location='http://localhost:8081/test/join/join.jsp';"></input>

</form>
<%
}
%>
</body>
</html>