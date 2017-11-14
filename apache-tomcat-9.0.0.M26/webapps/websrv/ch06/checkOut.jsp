<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ch06 : checkOut.jsp</title>
</HEAD>
<body>
<div align="center">
<H2>계산</H2>
선택한 상품 목록
<HR>
<%
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null) {
		out.println("선택한 상품이 없습니다.!!!");
	}
	else {
		for(Object productname:list) {
			out.println(productname+"<BR>");
		}
	}
%>
</div>
</body>
</html>