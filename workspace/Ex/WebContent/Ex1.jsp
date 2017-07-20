<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="Ex1" method="post" size="1">
	
	<label for="name">이름</label>
	<input type="text" id="name" />
	<br/>
	
	<label for="code">주민등록 번호</label>
	<input type="text" id="code1"/>-<input type="password" id="code2"/>
	<br/>
	
	<label for="id">아이디</label>
	<input type="text" id="id" name="id">
	<br/>
	<label for="pwd">비밀번호</label>
	<input type="password" id="pwd" name="pwd"/>
	<br/>
	
	<label for="pwd_check">비밀번호 확인</label>
	<input type="password" id="pwd_check" name="pwd_check">
	<br/>
	
	<label for="email">이메일</label>
	<input type="text" id="email1" class="box" name="email1"/>@<input type="text" id="email2"/>
	<select id="email_select">
	<option value="naver.com">naver.com</option>
	<option value="hanmail.net">hanmail.net</option>
	<option value="gmail.com">gmail.com</option>
	<option value="nate.com">nate.com</option>
	</select>
	<br/>
	
	<label for="postcode">우편번호</label>
	<input type="text" id="postCode1" name="postCode"/>
	<br/>
	*
	<label for="adress">주소</label>
	<input type="text" id="adress1" name="adress1"/>
	<input type="text" id="adress2" name="adress2"/>
	<br/>
	
	<label for="hp">핸드폰번호</label>
	<input type="text" id="hp" name="hp">
	<br/>
	
	<label for="job">직업</label>
	<select id="job">
	<option value="학생">학생</option>
	<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
	<option value="언론">언론</option>
	<option value="공무원">공무원</option>
	</select>
	<br/>
	
	<label for="sns_check">메일/SMS정보 수신</label>
	<input type="radio" id="sns_check" name="sns_check" value="수신"/>수신
	<input type="radio" id="sns_check" name="sns_check" value="수신거부"/>수신거부
	<br/>
	
	<label>관심분야</label>
	<input type="checkbox" id="inter" name="inter" value="생두"/>생두
	<input type="checkbox" id="inter" name="inter" value="원두"/>원두
	<input type="checkbox" id="inter" name="inter" value="로스팅"/>로스팅
	<input type="checkbox" id="inter" name="inter" value="에스프레소"/>에스프레소
	<input type="checkbox" id="inter" name="inter" value="창업"/>창업
	<br/>
	
	<input type="submit" value="회원가입" />
	<input type="button" value="취소" onClick="history.back();">
	
	
</form>
</body>
</html>