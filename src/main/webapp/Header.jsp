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
	
	String logout = request.getParameter("logout");
	if(logout != null){
		session.setAttribute("id", null);
		session.setMaxInactiveInterval(0);
	}
	
	String id = (String) session.getAttribute("id");
	if (id == null) {
		id = "Guest";
	}
	%>
	<table width="800">
		<tr height="100">
			<td colspan="2" align="center" width="260">
			<img src="img/logo.jpg" width="120" height="100" />
				</td>
			<td colspan="5" align="center">
				<h1>������ ����</h1>
			</td>
		</tr>
		<tr height="50">
			<td width="110" align="center">�ؿܿ���</td>
			<td width="110" align="center">��������</td>
			<td width="110" align="center">�װ�</td>
			<td width="110" align="center">ȣ��</td>
			<td width="110" align="center">����/�н�</td>
			<td width="110" align="center">��Ű��</td>
			
			<td width = "200" align = "center">
			<%
				if(id.equals("Guest")){
			%>
				<%=id%>�� <button onclick="location.href='SessionMain.jsp?section=SessionLoginForm.jsp'">�α���
				</button>
				<%}else{ %>
				<%=id%>�� <button onclick="location.href='SessionMain.jsp?logout=1'">�α׾ƿ�</button>
				<%} %>
				</td>
		</tr>
	</table>
</body>
</html>