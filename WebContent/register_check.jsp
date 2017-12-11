<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> register Check </title>
</head>
<body>
<%

        String his_name = request.getParameter("userName");
        String his_id = request.getParameter("userId");
        String his_pw = request.getParameter("userPw");
        String his_favorite = request.getParameter("userFavorite");
        String his_job = request.getParameter("userJob");     
   
        try {

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
   		
            String sql = "INSERT INTO user VALUES ('"+ 0 + // 0 넣으면 알아서 increase 됨
            			"','" + his_id +
            			"','"+ his_pw + 
                    	"','" + his_name + 
                    	"','" + his_favorite + 
                    	"','" + his_job +
                    	"','" + "test" +
                    	"');";
            stmt.executeUpdate(sql);

            response.sendRedirect("loginForm.jsp");        
            
        } catch (Exception e) {  
        		System.out.println(e);
            out.println("DB error");
        }
        
    %>
 
</body>
</html>
