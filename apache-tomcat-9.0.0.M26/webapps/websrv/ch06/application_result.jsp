<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE> </TITLE></HEAD>
<BODY>
<div align="center">
<H2>application 예제</H2>
<HR>
username 에 설정된 값은 : <%= application.getAttribute("username") %> <P>
<%
	Integer count = (Integer)application.getAttribute("count");
	int cnt = count.intValue()+1;
	application.setAttribute("count",cnt);
%>
count : <%= cnt %>
</div>
</BODY>
</HTML>