<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch14:property.jsp</title>
</head>
<body>
<div align="center">
<H2>ch14:property.jsp</H2>
<HR>
ServletContext 설정값 출력<HR>
name3 : <%= getServletContext().getInitParameter("name3") %><BR>
workspace : <%= getServletContext().getInitParameter("workspace") %>
</div>
</body>
</html>