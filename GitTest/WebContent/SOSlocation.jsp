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


<link href="assets/css/styles7.css" rel="stylesheet" />





</head>
<body>
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



		<!-- 검색-->


	</nav>


	<!-- 레이아웃 왼쪽 사이드바 -->
	<div id="sidemenu">
		<div>
			<nav class="sb-sidenav sidemenu-bg">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="logoteam">logo</div>

						<hr>

					</div>
					<div class="menu">
						<ul>
							<li class="logoteam1"><a href="#"></a>menu</li>
							<li><a href="communityMain" class="sb-menu sb-menu1" > 게시판 </a></li>
							<li><a href="" class="sb-menu sb-menu2"> 실시간 </a></li>
							<li><a href="LogoutService" class="sb-menu"> 로그아웃 </a></li>
						</ul>
					</div>
			</nav>			
		</div>

<%
	List<SosVO> list = (List<SosVO>) request.getAttribute("list");

%>
<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab15bbf4553c26cfa72473db8ed98a2d"></script>


<script>	
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
<%
for (SosVO vo : list) {
%>
// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(<%=vo.getLatitude() %>, <%=vo.getLongtitude() %>); 

<% } %>
// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>




<script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous">
	

	</script>
</body>
</html>