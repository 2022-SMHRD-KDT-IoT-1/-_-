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
	<div class="wrap">
		<video muted autoplay loop> <source src="assets/bg/bg.mp4" type="video/mp4"></video>
			<div class="wrap_bg"></div>
		<div class="form-wrap">
			<form action="JoinService" id="Join" class="input-group1" method="post">
			<div id="btn">회원가입</div>
				<input type="text" name="mem_id" class="input-field" placeholder="ID입력">
				<input type="password" name="mem_pw" class="input-field" placeholder="PW입력">
				<input type="text" name="mem_name" class="input-field" placeholder="User name or Email" required>
				
				
				<div class="gender">
				남자&nbsp;<input type="radio" name="gender" class="ge" value="남">
				&nbsp;&nbsp;&nbsp;&nbsp;여자&nbsp;<input type="radio" name="gender" class="ge" value="여">
				</div>
				
				<input type="text" name="mem_tel" class="input-field" placeholder="연락처">
				<input type="text" name="mem_guardian_tel" class="input-field" placeholder="보호자 연락처">
				<input type="date" class="input-field" name="mem_birthdate" placeholder="생년월일">
				<input type="text" name="jp_num" class="input-field" placeholder="제품번호">
				</form>  
                   <a class="joinsubmit" href="LoginMain.jsp" onClick = "alert('회원가입 완료')"><button class = "submit" >회원가입</button></a>
            </div>
	</div>
</body>
</html>


