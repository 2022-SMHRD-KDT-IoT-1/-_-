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
						<td>����</td>
						<td><input type="text" name = "title"> </td>
					</tr>
					<tr>
						<td>�ۼ���</td>
						<td><input  type="text" name = "writer"> </td>
					</tr>
					<tr>
						<td colspan="2">����</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name = "file" type="file" style="float: right;">
							<textarea name = "content" rows="10" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ">
							<input type="submit" value="�ۼ��ϱ�">
						</td>
					</tr>
				</table>
				</form>
	</div>
</body>
</html>