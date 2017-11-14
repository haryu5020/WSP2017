<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<%
	request.setCharacterEncoding("UTF-8");
	AddrBean addr = am.getAddr(request.getParameter("sname"));
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07 : sname.jsp</title>
</head>
<body>
<div align="center">
<H2>등록내용</H2>
이름 : <%=addr.getUsername() %><P>
전화번호 : <%=addr.getTel() %><P>
이메일 : <%=addr.getEmail() %> <P>
성별 : <%=addr.getSex() %>
<HR>
<a href="addr_list.jsp">전체 목록 보기</a>
</div>
</body>
</html>