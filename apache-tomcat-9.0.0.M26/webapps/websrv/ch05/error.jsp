<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<head>
<title>ch05 : 에러페이지</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<center>
<H2>처리중 문제가 발생했습니다</H2>
<HR>
<table>
<tr bgcolor="pink"><td>
관리자에게 문의해 주세요..<BR>
빠른시일내 복구하겠습니다.
<HR>
<%= exception%>
<HR>

</td>
</tr>
</table>
</center>

</body>