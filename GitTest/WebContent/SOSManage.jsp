
<%@page import="Model.MessagingVO"%>
<%@page import="Model.SosVO"%>
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


<title>������ ������</title>


<link href="assets/css/styles4.css" rel="stylesheet" />





</head>
<body>


<%
	List<SosVO> list = (List<SosVO>) request.getAttribute("list");
	List<MessagingVO> Messaging = (List<MessagingVO>)request.getAttribute("Messaging");
	//api �ҷ����� / ������ ��ȣ �� th�±� �߰��ؼ�  �޽��� send ��ư �߰�

%>
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
	</nav>
	<!-- ���̾ƿ� ���� ���̵�� -->
	<div id="sidemenu">
		<div id="sidemenu_section">
			<nav class="sb-sidenav sidemenu-bg">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<button type="button" onclick="location.href='ManagerMain.jsp'" class="btm_image" id="img_btn"><img class = "eye" src="assets/image/logo.png"></button>
						<hr>
					</div>
					<div class="menu">
						<ul>
							<li class="logoteam1"><a href="#"></a>menu</li>
                     <li><a href="ManageService" class="sb-menu sb-menu2">ȸ������</a></li>
                     <li class="sosmenu"><a href="#" class="sb-menu sb-menu1">��޸޽�����Ȳ</a></li>
                     <li><a href="ManageCommunitymain.jsp" class="sb-menu sb-menu2" >�Խ��� </a></li>
                     <li><a href="LogoutService" class="sb-menu"> �α׾ƿ� </a></li>
						</ul>
					</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				 <div class>
               <h1 class="this">��޸޽�����Ȳ</h1>
               <div>
               <table id="list" class="member">
                  <thead>         
                  <!-- ================����=============== -->
                     <tr>
                        <th class="name th1" scope="col">�Ű� ����
                        </td>
                        <th class="gender th1" scope="col">��ġ
                        </td>
                        <th class="birth th1" scope="col">ȸ�� �̸�
                        </td>
                        <th class="number1 th1" scope="col">����ó
                        </td>
                        <th class="number2 th1" scope="col">��ȣ�� ����ó
                        </td>
                        <th class="number3 th1" scope="col">������ ��ȣ
                        </td>
                     </tr>
                  
                  <tbody>
                  <%
								for (SosVO vo : list) {
							%>
							<tr>
								<td><%=vo.getSos_seq()%></td>
								<td><%=vo.getLatitude()%><%=vo.getLongitude()%></td>
								<td><%=vo.getMem_name()%></td>
								<td><%=vo.getMem_tel()%></td>
								<td><%=vo.getMem_guardian_tel()%></td>
								<td><a href = "ViewSos?num=<%=vo.getSos_seq()%>"><%=vo.getJp_num()%></a></td>

							</tr>
							<%
								}
							%> 
                  </tbody> 
                   </thead>
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