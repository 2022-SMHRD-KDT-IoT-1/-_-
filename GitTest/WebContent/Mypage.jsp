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
<title>������ ������</title>


<link href="assets/css/styles7.css" rel="stylesheet" />





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



		<!-- �˻�-->


	</nav>


	<!-- ���̾ƿ� ���� ���̵�� -->
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
							<li><a href="communityMain" class="sb-menu sb-menu1"> �Խ��� </a></li>
							<li><a href="" class="sb-menu sb-menu2"> �ǽð� </a></li>
							<li><a href="LogoutService" class="sb-menu"> �α׾ƿ� </a></li>
						</ul>
					</div>
			</nav>



			

		</div>
		<div>
			<p class="pppp">����������</p>
		</div>
		<table class="111">
			<tr class="sostr">
				<td colspan="2" class="sostd tdmax">�̸�<br> <input
					class="lentd5" type="text"></td>
			</tr>
			<tr class="sostr 2222">
				<td class="sostd tdmax">���̵�</td>
				<td class="sostd tdmax">��й�ȣ</td>
			</tr>
			<tr class="sostr1">
				<td class="inptd tdmax" style="width: 0px;"><input
					class="lentd1" type="text"></td>
				<td class="inptd inptd2 tdmax"><input class="lentd2"
					type="password"></td>
			</tr>

			<tr class="sostr">
				<td class="sostd tdmax">�������</td>
			</tr>
			<tr class="sostr1">
				<td class="inptd tdmax"><form><input class="lentd4" type='date' id='currentDate' />
					</form></td>
<!-- <input class="lentd4" type="date"> -->
			</tr>
			<tr class="sostr">
				<td class="sostd">����ó</td>
				<td class="sostd tdmax">��ȣ�ڿ���ó</td>
			</tr>
			<tr class="sostr1">
				<td class="inptd tdmax"><input class="lentd3" type="text"></td>
				<td class="inptd tdmax"><input class="lentd4" type="text"></td>
			</tr>
			<tr class="sostr">
				<td class="sostd tdmax">��ǰ��ȣ</td>
			</tr>
			<tr class="sostr1">
				<td colspan="2" class="inptd tdmax"><input class="lentd4" type="text"></td>
			</tr>
			<tr class="sostr1">
				<td tdmax></td>
				<td tdmax><div class="write_1">
						<a href="communityWrite.jsp"><button class="write2">������������</button></a>
					</div></td>
			</tr>
		</table>
	</div>



	<!-- <table class="centerline">
				<tr>
					<td></td>
				</tr>
			</table> -->

	<!-- ���̾ƿ� ���� ���̵�� -->




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