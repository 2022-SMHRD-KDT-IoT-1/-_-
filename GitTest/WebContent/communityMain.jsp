<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="Model.CommunityVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	List<CommunityVO> list = (List<CommunityVO>) request.getAttribute("list");
%>
<title>������ ������</title>


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



		<!-- �˻�-->


	</nav>


	<!-- ���̾ƿ� ���� ���̵�� -->
	<div id="sidemenu">
		<div id="sidemenu_section">
			<nav class="sb-sidenav sidemenu-bg">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<button type="button" onclick="location.href='LoginMain.jsp'"
				class="btm_image" id="img_btn"><img class = "eye" src="assets/image/logo.png"></button>

						<hr>

					</div>
					<div class="menu">
						<ul>
							<li class="logoteam1"><a href="#"></a>menu</li>
							<li><a href="#" class="sb-menu"> ������ </a></li>
							<li><a href="#" class="sb-menu"> ������ </a></li>
							<li><a href="#" class="sb-menu"> ������ </a></li>
						</ul>
					</div>
			</nav>



		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="content123">
					<h1 class="this">�Խ���</h1>
					<%-- 				<%
					List<CommunityVO> list = (List<CommunityVO>) request.getAttribute("list");
				%> --%>
					<div id="community">
						<table id="comunityList" class="member1">
							<thead>
								<!-- ================����=============== -->
								<tr>
									<th class="name th1" scope="col">��ȣ
									</td>
									<th class="title th1" scope="col">����
									</td>
									<th class="ID th1" scope="col">�ۼ���
									</td>
									<th class="date th1" scope="col">��¥
									</td>
								</tr>
								<!-- ================����=============== -->
							<tbody>
							<%-- 	<tr>
									<%
										for (CommunityVO vo : list) {
									%>
									<td class="name td1""><%=vo.getArticle_seq()%></td>
									<td class="title td1"><a
										href="communityView?num=<%=vo.getArticle_seq()%>"><%=vo.getArticle_title()%></a></td>
									<td class="gender td1"><%=vo.getMem_id()%></td>
									<td class="date td1"><%=vo.getArticle_date()%></td>
								</tr>
								<%
									}
								%> --%>
							
						</table>
					</div>

					<div class="write">
						<a href="communityWrite.jsp"><button class="write2">�۾���</button></a>
					</div>
					<div class="page" s>
						<a href="#" class="abc">1</a>
					</div>
				</div>
			</main>
		</div>
		<!-- ���̾ƿ� ���� ���̵�� -->

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
</body>
</html>