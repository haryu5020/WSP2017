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
<title>ȸ�� ����</title>
</head>
<body>
<% 
 Class.forName("com.mysql.jdbc.Driver");
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;
    
    try{
     String jdbcDriver ="jdbc:mysql://localhost:port/�����ͺ��̽���";
             String dbUser="�������̵�";
       String dbPass="���";
       String query="select * from dele";
     
     //2.������ ���̽� Ŀ�ؼ� ����
     conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
     //3.Statement ����
     stmt=conn.createStatement();
     //4. ��������
     rs=stmt.executeQuery(query);
     if(rs.next()) {
      %>
     <table border="1">

     <tr>
     <td>�ҿ��</td><td><%=rs.getString("del") %></td>
     </tr>
     </table>
     <%
     } 
     }catch(SQLException ex) {
      %>
      �����߻�:<%= ex.getMessage() %>
      <%
      }finally {
          if(rs!=null) try{rs.close(); }catch(SQLException ex) {}
          if(stmt!=null) try{stmt.close();} catch(SQLException ex) {}
          if(conn!=null) try{conn.close(); }catch(SQLException ex) {}
      
      }
      %>
</body>
</html> 