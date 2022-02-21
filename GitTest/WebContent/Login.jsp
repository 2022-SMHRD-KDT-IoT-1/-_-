<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="EUC-KR" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="stylesheet" href="assets/css/login.css">
</head>

<body>

<!-- <div class="bg">
		<video muted autoplay loop>
		<source src="https://bit.ly/3kYMF9A" type="video/mp4"></video> -->

	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				<div id="btn">&nbsp;로그인</div>
			</div>
			<form action="LoginService" id="login" action="" class="input-group" method = "post">

				<input type="text" name="mem_id" class="input-field" placeholder="ID입력">
				<input type="password" name = "mem_pw" class="input-field" placeholder="PW 입력" required>
				<br>
                    <button class="submit">로그인</button>
				</form>
               
            </div>
        </div>
        
    </body>
</html>

