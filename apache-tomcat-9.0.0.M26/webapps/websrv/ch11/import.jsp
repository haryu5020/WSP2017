<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>ch11 : import</title>
</head>

<body bgcolor="#FFFFFF">
<h3>&lt;c:import&gt;</h3>

다음은 import 를 이용해 포함한 것입니다.<HR>

<c:import url="set.jsp" var="myurl" />
<c:out value="${myurl}" escapeXml="false"/>

<HR>

<c:import url="http://www.hanb.co.kr/book/newbooks.html" var="myurl2" />
<c:out value="${myurl2}" escapeXml="false"/>

</body>
</html>