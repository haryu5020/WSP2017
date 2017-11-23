  <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.SQLException" %>
    
    <% String memberID =request.getParameter("memberID"); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 정보</title>
</head>
<body>
<% 
 Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    
    try{
     String jdbcDriver ="jdbc:mysql://localhost:port/데이터베이스명";
             String dbUser="유저아이디";
       String dbPass="비번";
       String query="select * from dele";
     
     //2.데이터 베이스 커넥션 생성
     conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
     //3.Statement 생성
     stmt=conn.createStatement();
     //4. 쿼리실행
     rs=stmt.executeQuery(query);
     if(rs.next()) {
      %>
     <table border="1">

     <tr>
     <td>불용어</td><td><%=rs.getString("del") %></td>
     </tr>
     </table>
     <%
     } 
     }catch(SQLException ex) {
      %>
      에러발생:<%= ex.getMessage() %>
      <%
      }finally {
          if(rs!=null) try{rs.close(); }catch(SQLException ex) {}
          if(stmt!=null) try{stmt.close();} catch(SQLException ex) {}
          if(conn!=null) try{conn.close(); }catch(SQLException ex) {}
      
      }
      %>
</body>
</html> 