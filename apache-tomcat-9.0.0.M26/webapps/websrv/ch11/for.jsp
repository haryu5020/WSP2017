<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : forEach</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:for&gt;</h3>
<c:forEach var="i" items="${members}" begin="0" varStatus="status" end="5">
  index: ${status.index} /
  count: ${status.count} <BR>
  name: ${i.name}<BR>
  email: ${i.email}<BR>
 <HR>
</c:forEach>

<c:forTokens items="홍길동,011-211-0090,서울" delims="," var="sel">
	${sel} <BR>
</c:forTokens>

</body>
</html>