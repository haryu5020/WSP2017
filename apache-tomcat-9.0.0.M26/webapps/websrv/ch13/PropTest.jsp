<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch13 : Properties 연계</title>
</head>
<body>
<div align="center">
<H2>Properties 연계</H2>
<HR>
 버전 :  ${prop.get('version')} <BR>
 url :  ${prop.get('url')} <BR>
 user :  ${prop.get('user')} <BR>
 password :  ${prop.get('passwd')}
 <HR>
 <H2>Admin Properties</H2>
 관리자 ID : ${prop.get("adminId")} <BR>
 관리자 전화번호 : ${tel}
</div>
</body>
</html>