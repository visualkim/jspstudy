<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String top = (String) request.getAttribute("top");
	String left = (String) request.getAttribute("left");
	String right = (String) request.getAttribute("right");
	String bottom = (String) request.getAttribute("bottom");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="./css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<table width="1400" height="650">
		<tr>
			<td colspan="2" width="100%" height="15%"><jsp:include
					page="<%=top%>" /></td>
		</tr>
		<tr>
			<td width="25%" height="70%"><jsp:include page="<%=left%>" /></td>
			<td width="75%" height="70%"><jsp:include page="<%=right%>" /></td>
		</tr>
		<tr>
			<td colspan="2" width="100%" height="15%"><jsp:include
					page="<%=bottom%>" /></td>
		</tr>
	</table>

</body>
</html>