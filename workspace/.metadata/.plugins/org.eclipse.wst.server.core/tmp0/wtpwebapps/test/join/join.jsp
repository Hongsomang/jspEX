<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<!-- <script>
function checking(){
	if(document.writeForm.user_id.value==" ")alert("아이디를 입력해주세요.");
	else if(document.writeForm.pwd.value==" ")alert("비밀번호를 입력해주세요.");
	else if(document.writeForm.name.value==" ")alert("이름을 입력해주세요.");
	else if(document.writeForm.stu_code.value==" ")alert("학번을 입력해 주세요.");
	else {doucument.writeform.submit();}
		
}

</script> -->
<%request.setCharacterEncoding("EUC-KR"); %>
</head>
<body>
	<form name="wrtieForm" action="save_do.jsp" method="post">
	ID:<input type="text" name="user_id"size="12"><br>
	pw:<input type="password"name="pwd"size="12"><br>
	이름:<input type="text"name="name"size="12"><br>
	학번:<input type="text"name="stu_code"size="12"><br>
	<input type="submit" value="회원가입" ></input>
	<input type="reset" vlaue="다시작성"><br>
	#이름 학번을 제대로 입력해주세요!!
	</form>
</body>
</html>