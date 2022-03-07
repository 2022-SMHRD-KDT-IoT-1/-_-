<%@page import="Model.MemberVO"%>
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
	<% MemberVO vo = (MemberVO)session.getAttribute("vo"); %>
	<div></div>
	<div class="wrap">
		<video muted autoplay loop> <source src="assets/bg/wewalk.mp4"
			type="video/mp4"></video>
		<div class="wrap_bg">
			<a href="Mypage.jsp" class="userimage"><img src="assets/image/user.png"></a>
		</div>

		<div class="menu">
			<ul>
				<li><button type="button" onclick="location.href='ManagerMain.jsp'"
						class="btm_image" id="img_btn">
						<img class = "eye" src="assets/image/logo.png">
					</button></li>
				<li><a href="ManageService" class="menu list">회원관리</a></li>
				<li><a href="SosService" class="menu list">긴급메시지현황</a></li>
				<li><a href="communityMain?mem_id=<%=vo.getMem_id()%>" class="menu list">게시판</a></li>
				<li><a href="LogoutService" class="menu list">로그아웃</a></li>
			</ul>
		</div>
		<div class="fade-in-box1">
				We are always by<br> your side<br>
			</div>

	</div>
</body>
</html>




