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
	
	<label for="name">�̸�</label>
	<input type="text" id="name" />
	<br/>
	
	<label for="code">�ֹε�� ��ȣ</label>
	<input type="text" id="code1"/>-<input type="password" id="code2"/>
	<br/>
	
	<label for="id">���̵�</label>
	<input type="text" id="id" name="id">
	<br/>
	<label for="pwd">��й�ȣ</label>
	<input type="password" id="pwd" name="pwd"/>
	<br/>
	
	<label for="pwd_check">��й�ȣ Ȯ��</label>
	<input type="password" id="pwd_check" name="pwd_check">
	<br/>
	
	<label for="email">�̸���</label>
	<input type="text" id="email1" class="box" name="email1"/>@<input type="text" id="email2"/>
	<select id="email_select">
	<option value="naver.com">naver.com</option>
	<option value="hanmail.net">hanmail.net</option>
	<option value="gmail.com">gmail.com</option>
	<option value="nate.com">nate.com</option>
	</select>
	<br/>
	
	<label for="postcode">�����ȣ</label>
	<input type="text" id="postCode1" name="postCode"/>
	<br/>
	*
	<label for="adress">�ּ�</label>
	<input type="text" id="adress1" name="adress1"/>
	<input type="text" id="adress2" name="adress2"/>
	<br/>
	
	<label for="hp">�ڵ�����ȣ</label>
	<input type="text" id="hp" name="hp">
	<br/>
	
	<label for="job">����</label>
	<select id="job">
	<option value="�л�">�л�</option>
	<option value="��ǻ��/���ͳ�">��ǻ��/���ͳ�</option>
	<option value="���">���</option>
	<option value="������">������</option>
	</select>
	<br/>
	
	<label for="sns_check">����/SMS���� ����</label>
	<input type="radio" id="sns_check" name="sns_check" value="����"/>����
	<input type="radio" id="sns_check" name="sns_check" value="���Űź�"/>���Űź�
	<br/>
	
	<label>���ɺо�</label>
	<input type="checkbox" id="inter" name="inter" value="����"/>����
	<input type="checkbox" id="inter" name="inter" value="����"/>����
	<input type="checkbox" id="inter" name="inter" value="�ν���"/>�ν���
	<input type="checkbox" id="inter" name="inter" value="����������"/>����������
	<input type="checkbox" id="inter" name="inter" value="â��"/>â��
	<br/>
	
	<input type="submit" value="ȸ������" />
	<input type="button" value="���" onClick="history.back();">
	
	
</form>
</body>
</html>