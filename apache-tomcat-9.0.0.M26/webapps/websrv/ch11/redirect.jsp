<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : redirect</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:redirect&gt;</h3>
<c:redirect url="/ch11/choose.jsp">
	<c:param name="sel">a</c:param>
</c:redirect>
</body>
</html>