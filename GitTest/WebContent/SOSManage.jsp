
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


<title>관리자 페이지</title>


<link href="assets/css/styles4.css" rel="stylesheet" />





</head>
<body>


<%
	List<SosVO> list = (List<SosVO>) request.getAttribute("list");
	List<MessagingVO> Messaging = (List<MessagingVO>)request.getAttribute("Messaging");
	//api 불러오기 / 지팡이 번호 옆 th태그 추가해서  메시지 send 버튼 추가

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
	<!-- 레이아웃 왼쪽 사이드바 -->
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
                     <li><a href="ManageService" class="sb-menu sb-menu2">회원관리</a></li>
                     <li class="sosmenu"><a href="#" class="sb-menu sb-menu1">긴급메시지현황</a></li>
                     <li><a href="ManageCommunitymain.jsp" class="sb-menu sb-menu2" >게시판 </a></li>
                     <li><a href="LogoutService" class="sb-menu"> 로그아웃 </a></li>
						</ul>
					</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				 <div class>
               <h1 class="this">긴급메시지현황</h1>
               <div>
               <table id="list" class="member">
                  <thead>         
                  <!-- ================예시=============== -->
                     <tr>
                        <th class="name th1" scope="col">신고 순번
                        </td>
                        <th class="gender th1" scope="col">위치
                        </td>
                        <th class="birth th1" scope="col">회원 이름
                        </td>
                        <th class="number1 th1" scope="col">연락처
                        </td>
                        <th class="number2 th1" scope="col">보호자 연락처
                        </td>
                        <th class="number3 th1" scope="col">지팡이 번호
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
		<!-- 레이아웃 왼쪽 사이드바 -->

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
</body>
</html>