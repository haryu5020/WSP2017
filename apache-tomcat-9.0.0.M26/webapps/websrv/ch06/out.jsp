<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD><TITLE>ch06 : out.jsp</TITLE></HEAD>
<BODY>
<div align="center">
<H2> out 내장객체의 사용 </H2>
<HR>
1. 설정된 버퍼크기 : <%= out.getBufferSize() %> <BR>
2. 남아있는 버퍼크기 : <%= out.getRemaining() %> <BR>
<% out.flush(); %>
3. flush 후 남아있는 버퍼크기 : <%= out.getRemaining() %> <BR>
<% out.clear(); %>
4. clear 후 남아있는 버퍼크기 : <%= out.getRemaining() %> <BR>
<% out.close(); %>
5. close 후 남아있는 버퍼크기 : <%= out.getRemaining() %> <BR>

</div>
</BODY>
</HTML>