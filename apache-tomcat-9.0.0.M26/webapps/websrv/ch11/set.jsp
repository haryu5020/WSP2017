<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : set</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:set&gt;</h3>
<c:set value="Hello World" var="msg"/>
msg : ${msg} <BR>
msg : <%= pageContext.getAttribute("msg")  %><BR>

<c:set target="${member}" property="email" value="changed@test.net" />
Member name : ${member.name} <BR>
Member email : ${member.email}
</body>
</html>