<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판</title>
<style>
table{
	width:100;
	border:1px solid #bcbcbc;
	
}
td,tr{
	border:1px solid #bcbcbc;
	padding: 5px 10px;
}
</style>
</head>
<body>
<center><h1>게시판 글쓰기</h1></center>

<form action="boardWrite.jsp">
<table>
<tr>
<td>작성자</td>
<td><input type="text" id="name" name="name" size="20"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" id="pwd" name="pwd" size="20">(게시물 수정 삭제시 필요합니다.)</td>
</tr>
<tr>
<td>이메일</td>
<td><input type="text" id="email" name="email" size="20"></td>
</tr>
<tr>
<td>글 제목</td>
<td><input type="text" id="title" name="title" size="20"></td>
</tr>
<tr>
<td>글 내용</td>
<td><textarea id="content" name="content" ></textarea> </td>
</tr>

</table>
</form>
</body>
</html>