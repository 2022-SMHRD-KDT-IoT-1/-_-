<%@page import="Model.SosVO"%>
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


<link href="assets/css/styles7.css" rel="stylesheet" />

<%
   SosVO vo = (SosVO) request.getAttribute("svo");
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
            <button type="button" onclick="location.href='LoginMain.jsp'" class="btm_image" id="img_btn"><img class = "eye" src="assets/image/logo.png"></button>

                  <hr>

               </div>
               <div class="menu">
                  <ul>
                     <li class="logoteam1"><a href="#"></a>menu</li>
                     <li><a href="#" class="sb-menu sb-menu1">긴급메시지현황</a></li>
                     <li><a href="#" class="sb-menu sb-menu2">회원관리</a></li>
                     <li><a href="LogoutService" class="sb-menu"> 로그아웃 </a></li>
                  </ul>
               </div>
         </nav>
         <p style="margin-top:-12px">
    <b>Chrome 브라우저는 https 환경에서만 geolocation을 지원합니다.</b> 참고해주세요.
</p>
<div id="map" style="width:1200px;height:750px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab15bbf4553c26cfa72473db8ed98a2d"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(<%=vo.getLatitude()%>, <%=vo.getLongitude()%>), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(<%=vo.getLatitude()%>, <%=vo.getLongitude()%>); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
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