<%@page import="my.util.ConnUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Connection conn = null;
	PreparedStatement ps = null;
	try {
		conn = ConnUtil.getConnection();
%>
<b>연결성공!!</b>
<%
	} catch (Exception e) {
		e.printStackTrace();
%>
<b>연결실패!!</b>
<%
	} finally {
		ConnUtil.close(ps, conn);
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="./css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>

</body>
</html>