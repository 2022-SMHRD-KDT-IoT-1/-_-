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
                    <th class="writeth">제목</th>
                    <td class="writetd"><input class="answer" type="text" name="title"></td>
                </tr>
                <tr>
                    <th class="writeth">아이디</th>
                    <td class="writetd"><input class="answer" type="text" name="name"></td>
                </tr>
                <tr>
                    <th class="writeth">비밀번호</th>
                    <td class="writetd"><input class="answer" type="password" name="pass"></td>
                </tr>
                <tr>
                    <th class="writeth">내용</th>
                    <td class="writetd1"><textarea class="answer1" cols="100" rows="30" name="content"></textarea></td>
                </tr>
            </table>
           
        </form>
        <div class="writeview">
					<a href="communityMain.jsp"><button class="viewwrite">취소</button></a>
					<a href="communityMain.jsp" onClick = "alert('수정 완료')"><button class="viewwrite">수정</button></a>
					<a href="communityMain.jsp" onClick = "alert('삭제 완료')"><button class="viewwrite">삭제</button></a>
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
												
						<td colspan="2"><a href="comminityMain"><button>목록으로</button></a>
						<input type="delete" value="삭제하기">
							<input type="udpate" value="수정하기"> <!-- 내가 작성한 글만 수정,삭제 가능하게 해야함  -->
					
						</td>
					</tr> --%>
				</table>
			</div>
			
</body>
</html>