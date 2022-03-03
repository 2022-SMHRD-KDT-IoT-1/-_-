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

	<nav class="navbar navbar-expand bg">
		<a class="logo">logo</a>
	</nav>


	<div id="layoutSidenav_content">
		<main>
			<div>
				<h1 class="this">�Խ���</h1>
				<form>
					<div class="search">
						<input class="se" type="text" placeholder="Search for...">
						<button class="btn" id="btnNavbarSearch" type="button">
							<img class="se1" src="assets/image/search1.png">
						</button>
					</div>
				</form>

				 <%
		List<CommunityVO> list = (List<CommunityVO>)request.getAttribute("list");
	%> 
				<div id="community">
					<table id="comunityList" class="member">
						<thead>

							<!-- ================����=============== -->
							<tr>
								<th class="name th1" scope="col">��ȣ </td>
								<th class="title th1" scope="col">����
								
								</td>
								<th class="ID th1" scope="col">�ۼ���
								
								</td>
								<th class="date th1" scope="col">��¥
								
								</td>
							</tr>
						<!-- ================����=============== -->
						
						<tbody>
							<tr>
							<%for(CommunityVO vo: list){ %>
								<td class="name td1""><%=vo.getArticle_seq() %></td>
								<td class="title td1"><a href = "communityView?num=<%=vo.getArticle_seq()%>"><%=vo.getArticle_content()%></a></td>
								<td class="gender td1"><%=vo.getMem_id() %></td>
								<td class="date td1"><%=vo.getArticle_date()%></td>
							</tr>
							<%} %>
							
					</table>
				</div>
				
				<div class="write">
					<a href="communityWrite.jsp"><button class="write2">�۾���</button></a>
				</div>
				<div class="page"s><a href="#" class="abc">1</a></div>
			</div>
		</main>
	</div>
	
	


				
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>