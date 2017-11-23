<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>정보 공유 SNS</title>
    <link rel="stylesheet" type="text/css" href="main.css"/>
</head>
    <body>
    <%
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn=null;
    	Statement stmt=null;
    	ResultSet rs=null;
    	
    	try{
    		String jdbcDriver = "jdbc:mysql://117.17.198.33:3360/wsp2017";
    		String dbUser = "khk";
    		String dbPass = "khk1!";
    		String query = "select * from user";
    		
    		conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
    		stmt=conn.createStatement();
    		
    %>
        <div id = "body">
            <div id = "box1_1">
                <div id = "profile">
                    <form method="post" action=".">
                        <p><input type="text"></p>
                        <p><input type="password"></p>
                        <input type="button" value=" 로그인">
                    </form>
                    <p><a>회원가입</a></p>
                    <p><a>아이디/비밀번호 찾기</a></p>
                </div>
                <div id = "menu">
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                    <p><a>test</a></p>
                </div>
            </div>
            <div id = "box1_2">
                
            </div>
        </div>
        <%
        }catch(SQLException ex){
        	
        }finally{
        	
        }
        %>
    </body>
</html>