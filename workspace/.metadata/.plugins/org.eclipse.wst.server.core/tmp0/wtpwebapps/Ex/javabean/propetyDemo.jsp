<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="com.javalec.ex.MemberBean"/>
<hr>
�� �ڹ� �� ��ü ���� �� ����� ���� ����ϱ�<br><br>
�̸�:<jsp:getProperty name="member" property="name" /><br>
���̵�:<jsp:getProperty name="member" property="userid" />
<hr>
������ ������ �� ���ߵ� ���� ����ϱ�<br><br>
<jsp:setProperty name="member" property="name" value="�ڼ���"/>
<jsp:setProperty name="member" property="userid" value="pinksubin"/>
�̸�:<jsp:getProperty name="member" property="name" /><br>
���̵�:<jsp:getProperty name="member" property="userid"/>
</body>
</html>