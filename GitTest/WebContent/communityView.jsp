<%@page import="Model.CommunityVO"%>
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
		CommunityVO cvo = (CommunityVO)request.getAttribute("cvo");
	%>
			<div id = "community">
				<table id="communityList">
					<tr>
						<td><%=cvo.getArticle_title() %></td>
					</tr>
					<tr>
						<td><%=cvo.getMem_id() %></td>
					</tr>
					<tr>
						<td colspan="2"><%=cvo.getArticle_content()%></td>
					</tr>
					<tr>
						<td colspan="2">
							<img alt = "" src = "img/<%=cvo.getArticle_file1() %>">
						</td>
						<td colspan="2">
							<img alt = "" src = "img/<%=cvo.getArticle_file2() %>">
						</td>
					</tr>
					<tr>		
												
						<td colspan="2"><a href="comminityMain"><button>�������</button></a>
						<input type="delete" value="�����ϱ�">
							<input type="udpate" value="�����ϱ�"> <!-- ���� �ۼ��� �۸� ����,���� �����ϰ� �ؾ���  -->
					
						</td>
					</tr>
				</table>
			</div>
</body>
</html>