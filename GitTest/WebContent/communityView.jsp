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
		<button type="button" onclick="location.href='LoginMain.jsp'"
				class="btm_image" id="img_btn"><img class = "eye" src="assets/image/logo.png"></button>
	</nav>
    <div id="wrap">
        <form action="communityUpdate" method="post" enctype="multipart/form-data">
            <table class="table3">
                <tr>
                    <th class="writeth">����</th>
                    <td class="writetd"><input type="text" name="article_title" value="<%=cvo.getArticle_title()%>"></td>
                </tr>
                <tr>
                    <th class="writeth">���̵�</th>
                    <td class="writetd"><input type ="text" name="mem_id" value="<%=cvo.getMem_id()%>" readonly ></td>
                </tr>
                <tr>
                    <th class="writeth">��ȣ</th>
                    <td class="writetd"><input type ="text" name="article_seq" value="<%=cvo.getArticle_seq() %>" readonly ></td>
                </tr>
                <tr>
                    <th class="writeth">÷������</th>
                    <td class="writetd"><input type="text" name="article_file1" value ="<%=cvo.getArticle_file1() %>" ><input type="file" name="article_file3" ></td>
                    
                	<td class="writetd"><input type="text" name="article_file2" value = "<%=cvo.getArticle_file2() %>"><input type="file" name="article_file4"></td>
                    
                </tr>
                <tr>
                    <th class="writeth">����</th>
                    <td class="writetd1"><textarea class="answer1" cols="100" rows="30" name="article_content"><%=cvo.getArticle_content()%></textarea></td>
                </tr>
            </table>
                   <div class="writeview">
					<a href="communityMain"><input type="button" class="viewwrite" value="������"></input></a>
					<button class="viewwrite">����</button>
					<a href = "communityDelete?num=<%=cvo.getArticle_seq()%>"><input type="button" class="viewwrite" value="����"></input></a>
				</div>
        </form>

    </div>
			<div id = "community">
				<table id="communityList">
				</table>
			</div>
			
</body>
</html>