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


<link href="assets/css/styles4.css" rel="stylesheet" />





</head>
<body>
	<nav class="navbar navbar-expand bg">
		<!-- navar-expand : �ڸ� ���� -->
		<!-- Navbar Brand-->
		<a class="logo">logo345</a>



		<!-- �˻�-->
		<form>
			<div class="search">
				<input type="text" placeholder="Search for...">
				<button class="btn" id="btnNavbarSearch" type="button"></button>
			</div>
		</form>


	</nav>


	<!-- ���̾ƿ� ���� ���̵�� -->
	<div id="sidemenu">
		<div id="sidemenu_section">
			<nav class="sb-sidenav sidemenu-bg">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="menu">�޴�</div>
						<a class="sb-menu"> ������1234545 </a>


						<div class="menu">menu</div>
						<a class="sb-menu"> ������2 </a> <a class="sb-menu">������124 </a>
					</div>
			</nav>



		</div>
		<div id="layoutSidenav_content">
			<main>
				<div>
					<h1 class="this">Dashboard</h1>
					<table id="list" class="member">
						<thead>
							<tr>
								<th scope="col">�̸�
								</td>
								<th scope="col">����
								</td>
								<th scope="col">����
								</td>
								<th scope="col">����ó
								</td>
								<th scope="col">��ȣ�� ����ó
								</td>
								<th scope="col">��ǰ��ȣ
								</td>
							</tr>
						</thead>
						<tbody>
							<%
								for (MemberVO vo : list) {
							%>
							<tr>
								<td><%=vo.getMem_name()%></td>
								<td><%=vo.getMem_gender()%></td>
								<td><%=vo.getMem_birthdate()%></td>
								<td><%=vo.getMem_tel()%></td>
								<td><%=vo.getMem_guardian_tel()%></td>
								<td><%=vo.getJp_num()%></td>

							</tr>
							<%
								}
							%>
						</tbody>
					</table>
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