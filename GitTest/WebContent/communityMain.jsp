<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "Model.CommunityVO" %>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
		List<CommunityVO> communityList = (List<CommunityVO>)request.getAttribute("list");
	%>

	<div id = "community">
		<table id = "communityList">
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>�ۼ���</td>
				<td>�ð�</td>
			</tr>
			<%for (CommunityVO vo : communityList){ %>	
				<tr>
				<td><%=vo.getArticle_seq() %></td>
				<td><a href = "communityMain?num=<%=vo.getArticle_seq()%>"><%=vo.getArticle_title() %></a></td>
				<td><%= vo.getMem_id() %></td>
				<td><%= vo.getArticle_date() %></td>
				</tr>
			<%} %>
		</table>

		<a href = "Main.jsp">Ȩ����</button></a>				
		<a href = "communityWrite.jsp">�ۼ��ϱ�</button></a>				
		
	
	
	</div>
</body>
</html>