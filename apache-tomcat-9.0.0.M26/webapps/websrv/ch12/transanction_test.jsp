<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<jsp:useBean scope="page" id="bb" class="jspbook.ch12.Bank1Bean" />
<jsp:useBean scope="page" id="bb2" class="jspbook.ch12.Bank2Bean" />

<%
	if(request.getMethod().equals("POST")){
		if(bb.transfer(Integer.parseInt(request.getParameter("bal"))))
				out.println("<script>alert('정상처리 되었습니다.')</script>");
		else
				out.println("<script>alert('수용한도를 초과했습니다.')</script>");
	}

	bb.getData();
	bb2.getData();
%>

<HTML>
<HEAD>
<TITLE>ch12 :트랜잭션 테스트 </TITLE> 
</HEAD>

<BODY>
<div align="CENTER">
<H3>계좌현황</H3>
<HR>

<table border=1 cellpadding=5 cellspacing=0>
<tr>
<td>Bank1</td>
<td>이름 : <%=bb.getAname() %></td>
<td>잔액 : <%=bb.getBalance() %></td>
</tr>

<tr>
<td>Bank2</td>
<td>이름 : <%=bb2.getAname() %></td>
<td>잔액 : <%=bb2.getBalance() %></td>
</tr>

</table>
<HR>

<form name=form1 method=post>
이체금액 : <INPUT TYPE="text" NAME="bal" width=200 size="5">
<input type="submit" value="이체실행" name="B1"> <input type="reset" value="다시입력" name="B2">
</form>
</div>
</BODY>
</HTML>