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


<link href="assets/css/styles6.css" rel="stylesheet" />





</head>
<body>
	<nav class="navbar navbar-expand bg">
		<div class="logo">logo</div>
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
						<div class="logoteam">logo</div>

						<hr>

					</div>
					<div class="menu">
						<ul>
							<li class="logoteam1"><a href="#"></a>menu</li>
							<li><a href="#" class="sb-menu"> 페이지 </a></li>
							<li><a href="#" class="sb-menu"> 페이지 </a></li>
							<li><a href="#" class="sb-menu"> 페이지 </a></li>
						</ul>
					</div>
			</nav>



		</div>

		<main>
			<div>
				<h1 class="this">게시판</h1>


				<div>
					<section class="section1">
						<section class="section2">
							<div class="my-1">


							</div>
						</section>
						<section class="section3">
							<div class="my-1">
								<div class="my_1">
									<p class="ra">이름 : <input class="inpu" type="text"></p>
								</div>
								<div class="my_1">
									<p class="ra">비밀번호 : <input class="inpu" type="password"></p>
								</div>
								<div class="my_1">
									<p class="ra">연락처 : <input class="inpu" type="text"></p>
								</div>
								<div class="my_1">
									<p class="ra">보호자연락처 : <input class="inpu" type="text"></p>
								</div>
								<div class="my_1">
									<p class="ra">이름 : <input class="inpu" type="text"></p>
								</div>
								<div class="my_1">
									<p class="ra">제품번호 : <input class="inpu" type="text"></p>
								</div>
							</div>
							<div class="write_1">
							<a href="communityWrite.jsp"><button class="write2">개인정보수정</button></a>
						</div>
						</section>
						
					</section>
				</div>
			</div>
		</main>

		<!-- <table class="centerline">
				<tr>
					<td></td>
				</tr>
			</table> -->

		<!-- 레이아웃 왼쪽 사이드바 -->

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
</body>
</html>