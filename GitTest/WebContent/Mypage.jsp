<%@page import="Model.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<%
	List<MemberVO> list = (List<MemberVO>) request.getAttribute("list");
%>
<title>관리자 페이지</title>


<link href="assets/css/styles9.css" rel="stylesheet" />





</head>
<body>
	<nav class="navbar navbar-expand bg">
		
		<form>
			<div class="search">
				<input class="se" type="text" placeholder="Search for...">
				<button class="btn" id="btnNavbarSearch" type="button">
					<img class="se1" src="assets/image/search1.png">
				</button>
			</div>
		</form>

		<div class="imgback">
			<a href="Mypage.jsp" class="userimage"><img
				src="assets/image/user1.png"></a>
		</div>



		<!-- 검색-->


	</nav>


	<!-- 레이아웃 왼쪽 사이드바 -->
	<div id="sidemenu">
		<div>
			<nav class="sb-sidenav sidemenu-bg">
				<div class="sb-sidenav-menu">
					<div class="nav">
					<button type="button" onclick="location.href='LoginMain.jsp'" class="btm_image" id="img_btn"><img class = "eye" src="assets/image/logo.png"></button>

						<hr>

					</div>
					<div class="menu">
						<ul>
							<li class="logoteam1"><a href="#"></a>menu</li>
							<li><a href="communityMain" class="sb-menu sb-menu1"> 게시판 </a></li>
							<li><a href="" class="sb-menu sb-menu2"> 실시간 </a></li>
							<li><a href="LogoutService" class="sb-menu"> 로그아웃 </a></li>
						</ul>
					</div>
			</nav>



			

		</div>
		<div>
			<p class="pppp">마이페이지</p>
		</div>
		<table class="111">
			<tr class="sostr">
				<td colspan="2" class="sostd tdmax">이름<br> <input
					class="lentd5" type="text"></td>
			</tr>
			<tr class="sostr 2222">
				<td class="sostd tdmax">아이디</td>
				<td class="sostd tdmax">비밀번호</td>
			</tr>
			<tr class="sostr1">
				<td class="inptd tdmax" style="width: 0px;"><input
					class="lentd1" type="text"></td>
				<td class="inptd inptd2 tdmax"><input class="lentd2"
					type="password"></td>
			</tr>

			<tr class="sostr">
				<td class="sostd tdmax">생년월일</td>
			</tr>
			<tr class="sostr1">
				<td class="inptd tdmax"><form><input class="lentd4" type='date' id='currentDate' />
					</form></td>
<!-- <input class="lentd4" type="date"> -->
			</tr>
			<tr class="sostr">
				<td class="sostd">연락처</td>
				<td class="sostd tdmax">보호자연락처</td>
			</tr>
			<tr class="sostr1">
				<td class="inptd tdmax"><input class="lentd3" type="text"></td>
				<td class="inptd tdmax"><input class="lentd4" type="text"></td>
			</tr>
			<tr class="sostr">
				<td class="sostd tdmax">제품번호</td>
			</tr>
			<tr class="sostr1">
				<td colspan="2" class="inptd tdmax"><input class="lentd4" type="text"></td>
			</tr>
			<tr class="sostr1">
				<td tdmax></td>
				<td tdmax><div class="write_1">
						<a href="communityWrite.jsp"><button class="write2">개인정보수정</button></a>
					</div></td>
			</tr>
		</table>
	</div>



	<!-- <table class="centerline">
				<tr>
					<td></td>
				</tr>
			</table> -->

	<!-- 레이아웃 왼쪽 사이드바 -->




<script>
	document.getElementById('currentDate').value = new Date()
			.toISOString().substring(0, 10);;
			</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous">
	

	</script>
</body>
</html>