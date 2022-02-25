<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="EUC-KR" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="stylesheet" href="assets/css/join2.css">
<style>
	
	
	@media ( max-width :500px) {
		.form-wrap {
		
		/*여기는 모바일로 봤을때 설정 화면이에요 
		줄어들었을때 마진 값 없애서 왼쪽으로 붙여놓고 
		세로길이 100 view 로 해놨어용 
		이부분은 이제 재훈씨가 모바일로 했을때 어떻게 보였으면 좋겠는지
		여기다가 작성 하시면 됩니당
		*/
			margin: 0px;
			height : 100vh;
			
		}
	}
</style>
</head>

<body>
	
	
	<div class="wrap">
			
		
		<video muted autoplay loop>
			<source src="assets/bg/bg.mp4" type="video/mp4">
		</video>
		<div class="menu">	
			<ul>
				<li><a class="menu logo">logo</a></li>
			</ul>
		</div>
		<div class="wrap_bg">
		</div>
		<div class="form-wrap">
			<form action="LoginService" id="login" action="" class="input-group"
				method="post">
				<div id="btn">로그인</div>
				<input type="text" name="mem_id" class="input-field"
					placeholder="ID입력"> <input type="password" name="mem_pw"
					class="input-field" placeholder="PW 입력" required>
				<a href = "LoginMain.jsp" onClick = "alert('로그인 완료')"><button class="submit">로그인</button></a>
			</form>
         
           </div>
	</div>
</body>
</html>

