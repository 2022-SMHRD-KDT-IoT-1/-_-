<%@page import="Model.CommunityVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href="assets/css/styles6.css" rel="stylesheet" />
</head>


<body>
<body>

<%
					CommunityVO cvo = (CommunityVO) request.getAttribute("cvo");
				%>
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
							<li><a href="communityMain?mem_id=<%=cvo.getMem_id() %>" class="sb-menu sb-menu1""> 게시판 </a></li>
							<li><a href="ViewLocation?mem_id=<%=cvo.getMem_id() %>" class="sb-menu sb-menu2""> 실시간 </a></li>
							<li><a href="Logoutservice" class="sb-menu"> 로그아웃 </a></li>
						</ul>
					</div>
			</nav>



		</div>

		<main>
		<h1 class="this">게시판</h1>
			<div>
				

				<div id="wrap">
					<form class="form-1"action="communityUpdate" method="post"
						enctype="multipart/form-data">
						<table class="table3">
							<tr>
								<th class="writeth">제목</th>
								<td class="writetd" colspan="2"><input class="viewinput" type="text" name="article_title"
									value="<%=cvo.getArticle_title()%>"></td>
							</tr>
							<tr>
								<th class="writeth">아이디</th>
								<td class="writetd" colspan="2"><input class="viewinput" type="text" name="mem_id"
									value="<%=cvo.getMem_id()%>" readonly></td>
							</tr>
							<tr>
								<th class="writeth">번호</th>
								<td class="writetd" colspan="2"><input class="viewinput" type="text" name="article_seq"
									value="<%=cvo.getArticle_seq()%>" readonly></td>
							</tr>
							<tr>
								<th class="writeth">첨부파일</th>
								<td class="writetd"><input class="viewinput" type="text" name="article_file1"
									value="<%=cvo.getArticle_file1()%>"><input class="viewinput"
									type="file" name="article_file3"></td>

								<td class="writetd"><input class="viewinput" type="text" name="article_file2"
									value="<%=cvo.getArticle_file2()%>"><input type="file"
									name="article_file4"></td>

							</tr>
							<tr>
								<th class="writeth">내용</th>
								<td colspan="2" class="writetd1"><textarea class="answer1" cols="100"
										rows="30" name="article_content"><%=cvo.getArticle_content()%></textarea></td>
							</tr>
						</table>
						<div class="writeview">
							<a href="communityMain"><input type="button"
								class="viewwrite" value="나가기"></input></a>
							<button class="viewwrite">수정</button>
							<a href="communityDelete?num=<%=cvo.getArticle_seq()%>"><input
								type="button" class="viewwrite" value="삭제"></input></a>
						</div>
					</form>

				</div>
				<!-- <div id="community">
					<table id="communityList">
					</table>
				</div> -->
			</div>
		</main>
</body>
</html>