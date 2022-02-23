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
%>
	<div id="layoutSidenav_content">
			<main>
				<div>
					<h1 class="this">Dashboard</h1>
					<table id="list" class="member">
						<thead>
							<tr>
								<th scope="col">신고 순번
								</td>
								<th scope="col">위치
								</td>
								<th scope="col">이름
								</td>
								<th scope="col">연락처
								</td>
								<th scope="col">보호자 연락처
								</td>
								<th scope="col">제품번호
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
								<td><%=vo.getMem_name() %></td>
								<td><%=vo.getMem_tel()%></td>
								<td><%=vo.getMem_guardian_tel()%></td>
								<td><a href="SOSlocation.jsp"><%=vo.getJp_num()%></a></td>

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