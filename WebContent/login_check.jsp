<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="user.userDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="user" class="user.user" scope="page" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> Login_Check </title>
</head>
<body>
 
    <h1> login Check </h1>
    
    <% 
    	userDAO userDAO = new userDAO();
    	int result = userDAO.login(user.getUserEmail(), user.getUserPassword());
    	if(result == 1){
    		session.setAttribute("id", user.getUserID());
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("location.href = 'main.jsp'");
    		script.println("</script>");
    	}
    	else if (result == 0){
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('비밀번호가 틀립니다.')");
    		script.println("history.back()");
    		script.println("</script>");
    	}
    	else if (result == -1){
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('존재하지 않는 아이디입니다.')");
    		script.println("history.back()");
    		script.println("</script>");
    	}
    	else if (result == -2){
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('DB error')");
    		script.println("history.back()");
    		script.println("</script>");
    	}
       
    %>                                                              
 
</body>
</html>
