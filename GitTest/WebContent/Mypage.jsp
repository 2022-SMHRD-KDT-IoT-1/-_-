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


<link href="assets/css/styles5.css" rel="stylesheet" />



</head>
<body>



	<nav class="navbar navbar-expand bg">
		<a class="logo">logo</a>
		<!-- 검색-->
	</nav>

	<div id="layoutSidenav_content">
		<main>

			<div>
				<h1 class="this">마이페이지</h1>
			</div>
	</div>


	<section class="section1">
		<section class="section2">
			<div>ddd</div>
		</section>
		<section class="section3">
			<div>ddd</div>
		</section>
		<section class="section4">
			<div>ddd</div>
		</section>
		<section class="section5">
			<div>ddd</div>
		</section>
	</section>

</body>
</html>