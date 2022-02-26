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
</head>
<body>
<%
	List<SosVO> list = (List<SosVO>) request.getAttribute("list");
	List<MessagingVO> Messaging = (List<MessagingVO>)request.getAttribute("Messaging");
	//api �ҷ����� / ������ ��ȣ �� th�±� �߰��ؼ�  �޽��� send ��ư �߰�

%>
	<div id="layoutSidenav_content">
			<main>
				<div>
					<h1 class="this">Dashboard</h1>
					<table id="list" class="member">
						<thead>
							<tr>
								<th scope="col">�Ű� ����
								</td>
								<th scope="col">��ġ
								</td>
								<th scope="col">ȸ�� �̸�
								</td>
								<th scope="col">����ó
								</td>
								<th scope="col">��ȣ�� ����ó
								</td>
								<th scope="col">������ ��ȣ
								</td>
							</tr>
						</thead>
						<tbody>
							<%
								for (SosVO vo : list) {
							%>
							<tr>
								<td><%=vo.getSos_seq()%></td>
								<td><%=vo.getLatitude()%><%=vo.getLongtitude()%></td>
								<td><%=vo.getMem_name()%></td>
								<td><%=vo.getMem_tel()%></td>
								<td><%=vo.getMem_guardian_tel()%></td>
								<td><a href = "ViewSos?num=<%=vo.getSos_seq()%>"><%=vo.getJp_num()%></a></td>

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
	
</body>
</html>