<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>���� �α���</h2>
	<form action="SessionLoginProc.jsp" method = "post">
	<table width="400" border="1">
		<tr height="50">
			<td width="150">���̵�</td>
			<td width = "250"> <input type="text" name="id"/> </td>
		</tr>

		<tr height="50">
			<td width="150">�н�����</td>
			<td width="250"> <input type="password" name="pass" /></td>
		</tr>
		
	
	<tr height = "50">
			<td align = "center" colspan = "2"> <input type="submit" value = "�α���"/> </td>
	</tr>
	</table>
	</form>
</body>
</html>