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
	◎ 자바 빈 객체 생성 후 저장된 정보 출력하기<br><br>
	이름:<%=member.getName() %><br>
	아이디:<%=member.getUserid() %><br>
	<hr>
	◎정보 변경한 수 변겨오딘 정보 출력하기<br><br>
	<%
	member.setName("전수빈");
	member.setUserid("pinksubin");
	%>
	이름:<%=member.getName() %><br>
	아이디:<%=member.getUserid() %><br>
</body>
</html>