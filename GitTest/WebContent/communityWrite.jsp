<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div id = "community">
				<form action = "communityWrite" method = "post" enctype = "multipart/form-data">
				<table id="communityList">
					<tr>
						<td>제목</td>
						<td><input type="text" name = "title"> </td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input  type="text" name = "writer"> </td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name = "file" type="file" style="float: right;">
							<textarea name = "content" rows="10" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화">
							<input type="submit" value="작성하기">
						</td>
					</tr>
				</table>
				</form>
	</div>
</body>
</html>