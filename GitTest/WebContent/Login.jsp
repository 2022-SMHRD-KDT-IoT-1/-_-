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
		/*����� ����Ϸ� ������ ���� ȭ���̿��� 
		�پ������� ���� �� ���ּ� �������� �ٿ����� 
		���α��� 100 view �� �س���� 
		�̺κ��� ���� ���ƾ��� ����Ϸ� ������ ��� �������� ���ڴ���
		����ٰ� �ۼ� �Ͻø� �˴ϴ�
		*/
		margin: 0px;
		height: 100vh;
	}
}
</style>
</head>

<body>


	<div class="wrap">


		<video muted autoplay loop> <source src="assets/bg/bg.mp4"
			type="video/mp4"></video>
		<div class="wrap_bg">
			<div class="menu">
				<ul>
					<li>
						<button type="button" onclick="location.href='Main.jsp'"
							class="btm_image" id="img_btn">
							<img src="assets/image/logo.png">
						</button>

					</li>
				</ul>
			</div>

		</div>
		<div class="form-wrap">
			<form action="LoginService" id="login" class="input-group"
				method="post">
				<div id="btn">�α���</div>
				<input type="text" name="mem_id" class="input-field"
					placeholder="ID�Է�"> <input type="password" name="mem_pw"
					class="input-field" placeholder="PW �Է�" required>

				<div class="sub2">
					<a href="Join.jsp" class="joinsubmit1">ȸ������</a>
					<button class="submit">�α���</button>
				</div>

			</form>

		</div>
	</div>
</body>
</html>

