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
		<video muted autoplay> <source src="assets/bg/wewalk.mp4" type="video/mp4"></video>
		<div class="menu">	
			
			
		</div>
			<div class="wrap_bg">
			
				<button type="button" onclick="location.href='Main.jsp'" class="btm_image" id="img_btn"><img class = "eye"  src="assets/image/logo.png"></button>
			</div>
		<div class="form-wrap1">
			<form action="JoinService" id="Join" class="input-group1" method="post">
			<div id="btn">회원가입</div>
				<input type="text" name="mem_id" class="input-field" placeholder="ID입력">
				<input type="password" name="mem_pw" class="input-field" placeholder="PW입력">
				<input type="text" name="mem_name" class="input-field" placeholder="이름 입력" required>
				
				
				<div class="gender">
				남자&nbsp;<input type="radio" name="mem_gender" class="ge" value="m">
				&nbsp;&nbsp;&nbsp;&nbsp;여자&nbsp;<input type="radio" name="mem_gender" class="ge" value="f">
				</div>
				
				<input type="text" name="mem_tel" class="input-field" placeholder="연락처">
				<input type="text" name="mem_guardian_tel" class="input-field" placeholder="보호자 연락처">
				<input type="date" id='currentDate' class="input-field" name="mem_birthdate" placeholder="생년월일">
				<input type="text" name="jp_num" class="input-field" placeholder="제품번호">
				 <button class = "submit" >회원가입</button>
				</form>  
                 
            </div>
	</div>
	   <script>
   document.getElementById('currentDate').value = new Date()
         .toISOString().substring(0, 10);;
         </script>
</body>
</html>


