<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="EUC-KR" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="stylesheet" href="assets/css/join2.css">
</head>

<body>

<!-- <div class="bg">
		<video muted autoplay loop>
		<source src="https://bit.ly/3kYMF9A" type="video/mp4"></video> -->

	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				
			</div>
			<form action="JoinService" id="Join" class="input-group" method="post">
			<div id="btn">ȸ������</div>
				<input type="text" name="mem_id" class="input-field" placeholder="ID�Է�">
				<input type="password" name="mem_pw" class="input-field" placeholder="PW�Է�">
				<input type="text" name="mem_name" class="input-field" placeholder="User name or Email" required>
				
				
				
				<div class="gender">
				����&nbsp;<input type="radio" name="mem_gender" class="ge" value="m">
				&nbsp;&nbsp;&nbsp;&nbsp;����&nbsp;<input type="radio" name="mem_gender" class="ge" value="f">
				</div>
				
				<input type="text" name="mem_tel" class="input-field" placeholder="����ó">
				<input type="text" name="mem_guardian_tel" class="input-field" placeholder="��ȣ�� ����ó">
				<input type="date" class="input-field" name="mem_birthdate" placeholder="�������">
				<input type="text" name="jp_num" class="input-field" placeholder="��ǰ��ȣ">
			
                    <a href="Login.jsp" onClick = "alert('ȸ������ �Ϸ�')"><button class = "submit" >ȸ������</button></a>
				
                    
				</form>
               
            </div>
        </div>
        
    </body>
</html>


