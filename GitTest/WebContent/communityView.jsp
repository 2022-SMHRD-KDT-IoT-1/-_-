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
	<nav class="navbar navbar-expand bg">
		<a class="logo">logo</a>
	</nav>
    <div id="wrap">
        <form>
            <table class="table3">
                <tr>
                    <th class="writeth">����</th>
                    <td class="writetd"><input class="answer" type="text" name="title"></td>
                </tr>
                <tr>
                    <th class="writeth">���̵�</th>
                    <td class="writetd"><input class="answer" type="text" name="name"></td>
                </tr>
                <tr>
                    <th class="writeth">��й�ȣ</th>
                    <td class="writetd"><input class="answer" type="password" name="pass"></td>
                </tr>
                <tr>
                    <th class="writeth">����</th>
                    <td class="writetd1"><textarea class="answer1" cols="100" rows="30" name="content"></textarea></td>
                </tr>
            </table>
           
        </form>
        <div class="writeview">
					<a href="communityMain.jsp"><button class="viewwrite">���</button></a>
					<a href="communityMain.jsp" onClick = "alert('���� �Ϸ�')"><button class="viewwrite">����</button></a>
					<a href="communityMain.jsp" onClick = "alert('���� �Ϸ�')"><button class="viewwrite">����</button></a>
				</div>
    </div>
	<%
		CommunityVO cvo = (CommunityVO)request.getAttribute("cvo");
	%>
			<div id = "community">
				<table id="communityList">
					<%-- <tr>
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
					</tr> --%>
				</table>
			</div>
			
</body>
</html>