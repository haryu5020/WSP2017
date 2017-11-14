<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.ch07.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07 : addr_list.jsp</title>
</head>
<body>
<center>
<H2>주소록</H2>
<HR>
<a href="addr_form.html">주소추가</a><P>
<form method="POST" action="sname.jsp">
	검색 : <input type="text" name="sname"><input type="submit" value="검색">
</form>
<table border=1 width=500>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><TD>메뉴</TD></tr>
<%
	for(AddrBean ab : am.getAddrList()) {
%>
	<tr>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getSex() %></td>
	<td><font size=-1>[수정][<a href="addr_del.jsp?sname=<%=ab.getUsername()%>">삭제</a>]</font></td></tr>
<%	
	}
%>
</table>
</center>
</body>
</html>



