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
<meta charset="utf-8">
<title>Insert title here</title>


<link href="assets/css/styles2.css" rel="stylesheet" />


</head>
<body>

<% MemberVO vo = (MemberVO)session.getAttribute("vo"); %>
	<nav class="navbar navbar-expand bg">
		<a class="logo">logo</a>
	</nav>


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
										<td><input class="user1 board2" type=text name=mem_id value=<%=vo.getMem_id() %>
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
			<!-- ���̾ƿ� ���� ���̵�� -->




















			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
				crossorigin="anonymous"></script>
</body>
</html>