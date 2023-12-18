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
				<h1>떠나자 여행</h1>
			</td>
		</tr>
		<tr height="50">
			<td width="110" align="center">해외여행</td>
			<td width="110" align="center">국내여행</td>
			<td width="110" align="center">항공</td>
			<td width="110" align="center">호텔</td>
			<td width="110" align="center">투어/패스</td>
			<td width="110" align="center">패키지</td>
			
			<td width = "200" align = "center">
			<%
				if(id.equals("Guest")){
			%>
				<%=id%>님 <button onclick="location.href='SessionMain.jsp?section=SessionLoginForm.jsp'">로그인
				</button>
				<%}else{ %>
				<%=id%>님 <button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
				<%} %>
				</td>
		</tr>
	</table>
</body>
</html>