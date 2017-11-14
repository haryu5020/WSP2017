<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : url</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:url&gt;</h3>
<c:url value="/ch11/choose.jsp" var="target">
	<c:param name="sel">a</c:param>
</c:url>
<HR>
단순출력 : ${target}<BR>
링크연동 : <a href="${target}">choose.jsp-a선택</a>

</body>
</html>