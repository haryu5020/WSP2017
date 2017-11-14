<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD><TITLE>ch06 :session.jsp</TITLE></HEAD>
<BODY>
<div align="center">
<H2>session 예제 </H2>
<HR>
<%
	// isNew()  메서드를 이용해 최초세션설정을 확인하고 있다.
	if(session.isNew()) {
		out.println("<script> alert('세션이 해제되어 다시설정합니다.') </script>");
		session.setAttribute("login","홍길동"); 
	}
%>
# <%= session.getAttribute("login") %> 님 환영 합니다.!!!!<BR>
1. 세션 ID : <%= session.getId() %> <BR>
2. 세션 유지시간 : <%= session.getMaxInactiveInterval() %> <BR>

</div>
</BODY>
</HTML>