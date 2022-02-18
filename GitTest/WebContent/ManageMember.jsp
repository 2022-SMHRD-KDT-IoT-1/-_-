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
<title>관리자 페이지</title>

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="assets/css/styles2.css" rel="stylesheet" />


<!-- 메뉴페이지 로고 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<!-- 메뉴페이지 로고(화살표 등 이모티콘) -->


</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand bg-dark"><!-- navar-expand : 자리 고정 -->
		<!-- Navbar Brand-->
		<a class="navbar-brand">logo56123</a>



		<!-- Navbar Search-->
		<form class="d-md-inline-block">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for...">
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
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
								<i></i>
							</div> 페이지1
						</a>


						<div class="sb-sidenav-menu-heading">menu</div>
						<a class="nav-link">
							<div class="sb-nav-link-icon">
								<i class="fa-columns"></i>
							</div> 페이지2
						</a> <a class="nav-link">
							<div class="sb-nav-link-icon">
								<i class="fa-book-open"></i>
							</div> 페이지3

						</a>
					</div>
			</nav>



		</div>
		<div id="layoutSidenav_content">
			<main>
				<div>
					<h1 class="mt-4">Dashboard</h1>
					<ol class="breadcrumb">
						<li>회원관리 넣을 곳</li>
					</ol>
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