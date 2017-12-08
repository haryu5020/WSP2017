<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> Login_Check </title>
</head>
<body>
 
    <h1> login Check </h1>
    
    <%
    try{
        String driver = "com.mysql.jdbc.Driver";
    	Class.forName(driver);
       
    	Connection conn=null;
    	Statement stmt=null;
    	ResultSet rs=null;
    	
        String jdbcDriver = "jdbc:mysql://117.17.198.33:3360/wsp2017";
        String dbUser = "khk";
    	String dbPass = "khk1!";
    		
    	conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
    	stmt=conn.createStatement();
       
        String user_id = request.getParameter("eid");
        String user_pw = request.getParameter("passwd");
       
        String sql = "SELECT * FROM USERTABLE WHERE USER_ID='" + user_id + "' AND USER_PW='" + user_pw + "'";
        
        Boolean isLogin = false;
        while(rs.next()) {

            isLogin = true;
        }

        if(isLogin) {
            session.setAttribute("id", user_id); 
            session.setAttribute("pw", user_pw);
            response.sendRedirect("main.jsp");    
        } else {

            %> <script> alert("Check your ID or Password, It's wrong"); history.go(-1); </script> <% }
                                                                      
        } catch (Exception e) {       
        out.println("DB Connect fail");
    }
    %>                                                              
 
</body>
</html>
