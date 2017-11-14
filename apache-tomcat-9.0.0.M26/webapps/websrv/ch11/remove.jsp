<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : remove</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:remove&gt;</h3>
<c:set value="dinfree" var="msg" />
msg : ${msg}  <BR>
<c:remove var="msg" />
after remove : ${msg}
</body>
</html>