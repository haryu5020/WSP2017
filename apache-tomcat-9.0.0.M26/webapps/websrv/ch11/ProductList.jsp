<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch11:JSTL 예제</title>
</head>
<body>
<div align="center">
<H2>ch11:상품목록-JSTL버전  </H2>
<HR>
<form name=form1 method=POST action=ProductSel.jsp>
	<jsp:useBean id="product" class="jspbook.ch10.Product" scope="session"/>
	<select name="sel">
		<c:forEach items="${product.productList}" var="item">
			<option>${item}</option>
		</c:forEach>
	</select>
	<input type="submit" value="선택"/>
</form>
</div>
</body>
</html>