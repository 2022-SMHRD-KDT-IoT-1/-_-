<%@page import="Model.GpsVO"%>
<%@page import="java.util.List"%>
<%@page import="Model.LocationVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>������ ������</title>


<link href="assets/css/styles7.css" rel="stylesheet" />

<%
	GpsVO vo = (GpsVO) request.getAttribute("vo");
%>




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



		<!-- �˻�-->


	</nav>


	<!-- ���̾ƿ� ���� ���̵�� -->
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
                     <li><a href="#" class="sb-menu sb-menu1">��޸޽�����Ȳ</a></li>
                     <li><a href="#" class="sb-menu sb-menu2">ȸ������</a></li>
                     <li><a href="ManageCommunitymain.jsp" class="sb-menu sb-menu2" >�Խ��� </a></li>
                     <li><a href="LogoutService" class="sb-menu"> �α׾ƿ� </a></li>
						</ul>
					</div>
			</nav>
			<p style="margin-top:-12px">
    <b>Chrome �������� https ȯ�濡���� geolocation�� �����մϴ�.</b> �������ּ���.
</p>
<div id="map" style="width:1200px;height:750px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d3e74f8fbfd86473d6da4e1b339e544"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(<%=vo.getLatitude()%>, <%=vo.getLongitude()%>), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
var markerPosition  = new kakao.maps.LatLng(<%=vo.getLatitude()%>, <%=vo.getLongitude()%>); 

// ��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
marker.setMap(map);

// �Ʒ� �ڵ�� ���� ���� ��Ŀ�� �����ϴ� �ڵ��Դϴ�
// marker.setMap(null);    
</script>
	</div>



	<script>
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous">
	</script>
</body>
</html>