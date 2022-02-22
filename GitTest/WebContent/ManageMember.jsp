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
			List<MemberVO> list = (List<MemberVO>)request.getAttribute("list");
		
	
		%>
<title>관리자 페이지</title>


<link href="assets/css/styles4.css" rel="stylesheet" />





</head>
<body>
	<nav class="navbar navbar-expand bg-dark"><!-- navar-expand : 자리 고정 -->
		<!-- Navbar Brand-->
		<a class="logo">logo345</a>



		<!-- Navbar Search-->
		<form class="d-md-inline-block">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for...">
				<button class="btn" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>


	</nav>


	<!-- 레이아웃 왼쪽 사이드바 -->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav sb-sidenav-dark">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Main12</div>
						<a class="nav-link">
							<div class="sb-nav-link-icon">
							</div> 페이지1234545
						</a>


						<div class="sb-sidenav-menu-heading">menu</div>
						<a class="nav-link">
							<div class="sb-nav-link-icon">
								<i class="fa-columns"></i>
							</div> 페이지2
						</a> <a class="nav-link">
							<div class="sb-nav-link-icon">
								<i class="fa-book-open"></i>
							</div> 페이지124

						</a>
					</div>
			</nav>



		</div>
		<div id="layoutSidenav_content">
			<main>
				<div>
					<h1 class="mt-4">Dashboard</h1>
					<table id = "list" class="breadcrumb">
					<thead>						
					<tr>
						<th scope="col">이름</td>
						<th scope="col">성별</td>
						<th scope="col">생일</td>
						<th scope="col">연락처</td>
						<th scope="col">보호자 연락처</td>
						<th scope="col">제품번호</td>
					</tr>
					</thead>					
					<tbody>
					<%for(MemberVO vo : list){ %>				
					<tr>
						<td><%=vo.getMem_name()%></td>
						<td><%=vo.getMem_gender()%></td>
						<td><%=vo.getMem_birthdate()%></td>
						<td><%=vo.getMem_tel()%></td>
						<td><%=vo.getMem_guardian_tel()%></td>
						<td><%=vo.getJp_num()%></td>
						
					</tr>
					<%} %>
					</tbody>					
				</table>					
				</div>
		</div>
		</main>
	</div>
	<!-- 레이아웃 왼쪽 사이드바 -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
</body>
</html>