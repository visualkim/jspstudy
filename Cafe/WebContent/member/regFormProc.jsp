<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="vo" class="my.member.MemberVo" />
<jsp:setProperty property="*" name="vo" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="./css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
	ID :	<%=vo.getId()%><br> 
	Pass :	<%=vo.getPass()%><br> 
	이름 :	<%=vo.getName()%><br> 
	Email :	<%=vo.getEmail1()%>@<%=vo.getEmail2()%><br> 
	이메일 수신여부 :	<%=vo.getSent()%><br> 
	휴대폰 :	<%=vo.getPh1()%>	-	<%=vo.getPh2()%>	-	<%=vo.getPh3()%><br> 
	성별 :	<%=vo.getGender()%><br> 
	생년월일 :	<%=vo.getBirth1()%>년	<%=vo.getBirth2()%>월	<%=vo.getBirth3()%>일	<br> 
	주소 :	<%=vo.getAddress()%>
</body>
</html>
