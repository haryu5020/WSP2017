<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : choose</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:choose&gt;</h3>
<form>
<select name="sel">
	<option>-</option>
	<option ${param.sel=='a'? 'selected':''}>a</option>
	<option ${param.sel=='b'? 'selected':''}>b</option>
	<option ${param.sel=='c'? 'selected':''}>c</option>
	<option ${param.sel=='d'? 'selected':''}>d</option>
</select>
<input type=submit value="선택">
</form>
<HR>
<c:choose>
	<c:when test="${param.sel == 'a'}" >
		a 를 선택
	</c:when>
	<c:when test="${param.sel == 'b'}" >
		b 를 선택
	</c:when>
	<c:when test="${param.sel == 'c'}" >
		c 를 선택
	</c:when>
	<c:otherwise>
		a,b,c 이외의 것을 선택
	</c:otherwise>
</c:choose>

</body>
</html> 