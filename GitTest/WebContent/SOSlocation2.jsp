<%@page import="Model.SosVO"%>
<%@page import="Model.GpsVO"%>
<%@page import="java.util.List"%>
<%@page import="Model.LocationVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>geolocation���� ��Ŀ ǥ���ϱ�</title>
    
</head>
<body>
<p style="margin-top:-12px">
    <b>Chrome �������� https ȯ�濡���� geolocation�� �����մϴ�.</b> �������ּ���.
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d3e74f8fbfd86473d6da4e1b339e544"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

// ��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
marker.setMap(map);

// �Ʒ� �ڵ�� ���� ���� ��Ŀ�� �����ϴ� �ڵ��Դϴ�
// marker.setMap(null);    
</script>
</body>
</html>