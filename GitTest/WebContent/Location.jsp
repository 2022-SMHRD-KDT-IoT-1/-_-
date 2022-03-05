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
<body>

<%	 
	GpsVO vo = (GpsVO)request.getAttribute("vo");

%>
<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab15bbf4553c26cfa72473db8ed98a2d"></script>





<script>	
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(<%=vo.getLatitude() %>, <%=vo.getLongitude() %>), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다



// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(<%=vo.getLatitude() %>, <%=vo.getLongitude() %>); 


// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>

</body>
</html>