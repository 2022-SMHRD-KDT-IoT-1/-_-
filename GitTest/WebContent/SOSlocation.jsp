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

<title>관리자 페이지</title>


<link href="assets/css/styles8.css" rel="stylesheet" />

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



		<!-- 검색-->


	</nav>


	<!-- 레이아웃 왼쪽 사이드바 -->
	<div id="sidemenu">
		<div>
			<nav class="sb-sidenav sidemenu-bg">
				<div class="sb-sidenav-menu">
					<div class="nav">
				<button type="button" onclick="location.href='ManagerMain.jsp'" class="btm_image" id="img_btn"><img class = "eye" src="assets/image/logo.png"></button>

						<hr>

					</div>
					<div class="menu">
						<ul>
							<li class="logoteam1"><a href="#"></a>menu</li>
							<li><a href="ManageMember.jsp" class="sb-menu sb-menu1">
									회원관리 </a></li>
							<li><a href="" class="sb-menu sb-menu2"> 실시간 </a></li>
							<li><a href="LogoutService" class="sb-menu"> 로그아웃 </a></li>
						</ul>
					</div>
			</nav>
			<div class="mapview">
				<div id="map"
					style="width: 1473px; height: 787px; position: relative; overflow: hidden; background: url(&amp;quot;http://t1.daumcdn.net/mapjsapi/images/bg_tile.png&amp;quot;);">
					<div
						style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;http://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;">
						<div style="position: absolute;">
							<div style="position: absolute; z-index: 1; left: 0px; top: 0px;">
								<img src="http://map1.daumcdn.net/map_2d/2111ydg/L4/466/425.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -138px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/466/426.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 118px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/466/427.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L4/466/428.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/466/429.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/467/425.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -138px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/467/426.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 118px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/467/427.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L4/467/428.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/467/429.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/468/425.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -138px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/468/426.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 118px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/468/427.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L4/468/428.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/468/429.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/469/425.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -138px; top: -10px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/469/426.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 118px; top: -10px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/469/427.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: -10px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L4/469/428.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: -10px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/469/429.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: -10px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/470/425.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -138px; top: -266px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/470/426.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 118px; top: -266px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/470/427.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: -266px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L4/470/428.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: -266px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L4/470/429.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: -266px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/466/430.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1142px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/466/431.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1398px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/467/430.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1142px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/467/431.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1398px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/468/430.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1142px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/468/431.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1398px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/469/430.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1142px; top: -10px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/469/431.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1398px; top: -10px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L4/470/430.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1142px; top: -266px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L4/470/431.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1398px; top: -266px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
							</div>
							<div style="position: absolute; z-index: 0; left: 0px; top: 0px;">
								<img src="http://map2.daumcdn.net/map_2d/2111ydg/L3/933/854.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L3/933/855.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 502px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L3/933/856.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L3/933/857.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 758px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/933/858.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 758px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/934/854.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 630px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L3/934/855.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 502px; top: 630px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L3/934/856.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 630px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L3/934/857.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 758px; top: 630px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/934/858.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 630px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/935/854.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L3/935/855.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 502px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L3/935/856.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L3/935/857.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 758px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/935/858.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 502px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/936/854.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L3/936/855.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 502px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L3/936/856.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L3/936/857.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 758px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/936/858.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/937/854.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 374px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map3.daumcdn.net/map_2d/2111ydg/L3/937/855.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 502px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map0.daumcdn.net/map_2d/2111ydg/L3/937/856.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 630px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map1.daumcdn.net/map_2d/2111ydg/L3/937/857.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 758px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img
									src="http://map2.daumcdn.net/map_2d/2111ydg/L3/937/858.png"
									alt="" draggable="false"
									style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 886px; top: 246px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
							</div>
							<div style="position: absolute; z-index: 1;"></div>
							<div
								style="position: absolute; z-index: 1; width: 1473px; height: 787px;"></div>
							<div style="position: absolute; z-index: 1;">
								<svg version="1.1"
									style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2946px; top: -1574px; width: 7365px; height: 3935px;"
									viewBox="0 0 7365 3935">
									<defs></defs></svg>
							</div>
							<div
								style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
								<div
									style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 450px; top: 617px;">
									<img draggable="false"
										src="http://t1.daumcdn.net/mapjsapi/images/marker.png" alt=""
										title=""
										style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 29px, 42px, 0px); top: 0px; left: 0px; width: 29px; height: 42px;"><img
										src="http://t1.daumcdn.net/mapjsapi/images/transparent.gif"
										alt="" draggable="false" usemap="#daum.maps.Marker.Area:1"
										style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 29px; height: 42px;">
									<map id="daum.maps.Marker.Area:1"
										name="daum.maps.Marker.Area:1">
										<area href="javascript:void(0)" alt="" shape="poly"
											coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27"
											title="" style="-webkit-tap-highlight-color: transparent;">
									</map>
								</div>
							</div>
						</div>
					</div>
					<div
						style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
						<div
							style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
							<div
								style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div>
							<div
								style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">100m</div>
						</div>
						<div style="margin: 0px 4px; float: left;">
							<a target="_blank" href="http://map.kakao.com/"
								title="Kakao 지도로 보시려면 클릭하세요."
								style="float: left; width: 32px; height: 10px;"><img
								src="http://t1.daumcdn.net/mapjsapi/images/m_bi_b.png"
								alt="Kakao 지도로 이동"
								style="float: left; width: 32px; height: 10px; border: none;"></a>
							<div
								style="font: 11px/11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
						</div>
					</div>
					<div
						style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
				</div>
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab15bbf4553c26cfa72473db8ed98a2d"></script>
			</div>
		</div>

		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(
		<%=vo.getLatitude()%>
			,
		<%=vo.getLongitude()%>
			), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			// 마커가 표시될 위치입니다 
			var markerPosition = new kakao.maps.LatLng(
		<%=vo.getLatitude()%>
			,
		<%=vo.getLongitude()%>
			);

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				position : markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
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