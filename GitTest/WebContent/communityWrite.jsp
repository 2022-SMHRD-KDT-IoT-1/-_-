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


<link href="assets/css/styles6.css" rel="stylesheet" />





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
		<div id="sidemenu_section">
			<nav class="sb-sidenav sidemenu-bg">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<button type="button" onclick="location.href='LoginMain.jsp'" class="btm_image" id="img_btn"><img class = "eye" src="assets/image/logo.png"></button>

						<hr>

					</div>
					<div class="menu">
						<ul>
							<li class="logoteam1"><a href="#"></a>menu</li>
							<li><a href="communityMain" class="sb-menu"> �Խ��� </a></li>
							<li><a href="" class="sb-menu"> �ǽð� </a></li>
							<li><a href="LogoutService" class="sb-menu"> �α׾ƿ� </a></li>
						</ul>
					</div>
			</nav>



		</div>
		<div id="layoutSidenav_content">
			<main>
			<div>
				<h1 class="this">�Խ���</h1>
				<form action="communityWrite" class="write3" method="post" enctype="multipart/form-data">
					<table style="padding-top: 50px" align=center width=700 border=0
						cellpadding=2>
						<tr>
							<td height=20 align=center bgcolor=#ccc><font color=black>
									�۾���</font></td>
						</tr>
						<tr>
							<td bgcolor=white>
								<table class="table2">
									<tr>
										<td class="writetd2">�ۼ���</td>
										<td><input class="user1 board2" type=text name=mem_id value=<%-- <%=vo.getMem_id() %> --%>
											size=30></td>
									</tr>

									<tr>
										<td class="writetd2">����</td>
										<td><input class="title1 board2" type=text name=article_title
											size=60></td>
									</tr>

									<tr>
										<td style='vertical-align: middle' class="writetd2">����</td>
										<td><textarea class="content1 board3" name="article_content"
												cols="85" rows="15" style="width: 100%; height: 254px;"></textarea></td>
									</tr>
									<td colspan="2">
										<input name = "article_file1" type="file" style="float: left;">
										<input name = "article_file2" type="file" style="float: left;">
									<tr>
										
									</tr>
								</table>

								<div class="write_2">
									<button class="write2">�ۼ�</button>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
			</main>
		</div>
		<!-- ���̾ƿ� ���� ���̵�� -->

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
</body>
</html>










