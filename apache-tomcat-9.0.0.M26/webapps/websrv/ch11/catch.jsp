<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : catch</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:catch&gt;</h3>

<c:catch var="errMsg">
	<%=9/0 %>
</c:catch>

error message : ${errMsg}

</body>
</html>