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
	String section = request.getParameter("section");
	if (section == null) {
		section = "Section.jsp";
	}
	%>
	<table border="1" width="800">
		<tr height="150">
			<td align="center" colspan="2">
				<jsp:include page="Header.jsp" />
			</td>
		</tr>

		<tr height="400">
			<td align="center" width="200">
				<jsp:include page="Aside.jsp" />
			</td>
		


		<td align="center" width="600">
			<jsp:include page="<%=section%>" />
			</td>
		</tr>

		<tr height="100">
			<td align="center" colspan="2">
				<jsp:include page="Footer.jsp" />
			</td>
		</tr>
	</table>
</body>
</html>