<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%@ page import="user.userDAO"  %>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="user" class="user.user" scope="page" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userFavorite" />
<jsp:setProperty name="user" property="userJob" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> register Check </title>
</head>
<body>
<%
	if(user.getUserEmail() == null || user.getUserPassword() == null || user.getUserName() == null 
	|| user.getUserFavorite() == null || user.getUserJob() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('Please fill in all blanks.')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		userDAO userDAO = new userDAO();
		int result = userDAO.join(user);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('We already have same ID.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'loginForm.jsp'");
			script.println("</script>");
		}	
	}
 %>
 
</body>
</html>
