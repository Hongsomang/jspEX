<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP</title>
</head>
<body bgcolor="red">
이 파일은 red.jsp입니다.<br>
브라우저에 배경색인 빨간색으로 나타날까요?<br>
노란색으로 나타날까요?<hr>
forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지않습니다.<br>
<jsp:forward page="yellow.jsp"/>
	
</body>
</html>