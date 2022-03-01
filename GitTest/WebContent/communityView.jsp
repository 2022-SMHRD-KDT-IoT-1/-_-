<%@page import="Model.CommunityVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href="assets/css/styles2.css" rel="stylesheet" />
</head>


<body>




<body>
<%
		CommunityVO cvo = (CommunityVO)request.getAttribute("cvo");
	%>
	<nav class="navbar navbar-expand bg">
		<a class="logo" href="LoginMain.jsp">logo</a>
	</nav>
    <div id="wrap">
        <form>
            <table class="table3">
                <tr>
                    <th class="writeth">����</th>
                    <td class="writetd"><%=cvo.getArticle_title() %></td>
                </tr>
                <tr>
                    <th class="writeth">���̵�</th>
                    <td class="writetd"><%=cvo.getMem_id() %></td>
                </tr>
                <tr>
                    <th class="writeth">÷������</th>
                    <td class="writetd"><img alt = "" src = "img/<%=cvo.getArticle_file1() %>"></td>
                	<td class="writetd"><img alt = "" src = "img/<%=cvo.getArticle_file2() %>"></td>
                </tr>
                <tr>
                    <th class="writeth">����</th>
                    <td class="writetd1"><textarea class="answer1" cols="100" rows="30" name="content"><%=cvo.getArticle_content()%></textarea></td>
                </tr>
            </table>
           
        </form>
        <div class="writeview">
					<a href="communityMain.jsp"><button class="viewwrite">������</button></a>
					<a href="communityUpdate.jsp"><button class="viewwrite">����</button></a>
					<a href="communityDelete"><button class="viewwrite">����</button></a>
				</div>
    </div>
			<div id = "community">
				<table id="communityList">
				</table>
			</div>
			
</body>
</html>