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
												
						<td colspan="2"><a href="comminityMain"><button>목록으로</button></a>
						<input type="delete" value="삭제하기">
							<input type="udpate" value="수정하기"> <!-- 내가 작성한 글만 수정,삭제 가능하게 해야함  -->
					
						</td>
					</tr>
				</table>
			</div>
</body>
</html>