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
		<div class="wrap_bg">
		<div class="menu">	
			<ul>
				<button type="button" onclick="location.href='LoginMain.jsp'"
				class="btm_image" id="img_btn"><img src="assets/image/logo.png"></button>

			</ul>
		</div>
			</div>
		<div class="form-wrap1">
			<form action="JoinService" id="Join" class="input-group1" method="post">
			<div id="btn">ȸ������</div>
				<input type="text" name="mem_id" class="input-field" placeholder="	* ID�Է�">
				<input type="password" name="mem_pw" class="input-field" placeholder="PW�Է�">
				<input type="text" name="mem_name" class="input-field" placeholder="�̸� �Է�" required>
				
				<div class="article">
				<input name = "article_file1" type="file" style="float: left;">
				</div>
				
				<div class="gender">
				����&nbsp;<input type="radio" name="mem_gender" class="ge" value="m">
				&nbsp;&nbsp;&nbsp;&nbsp;����&nbsp;<input type="radio" name="mem_gender" class="ge" value="f">
			</div>
				
				<input type="text" name="mem_tel" class="input-field" placeholder="����ó">
				<input type="text" name="mem_guardian_tel" class="input-field" placeholder="��ȣ�� ����ó">
				<input type="date" class="input-field" name="mem_birthdate" placeholder="�������">
				<input type="text" name="jp_num" class="input-field" placeholder="��ǰ��ȣ">
				 <button class = "submit" >ȸ������</button>
				</form>  
                 
            </div>
	</div>
</body>
</html>


