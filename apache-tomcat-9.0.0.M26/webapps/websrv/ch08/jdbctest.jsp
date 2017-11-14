<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>

<%
	// 데이터베이스 연결관련 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;

	// 데이터베이스 연결관련정보를 문자열로 선언
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1/websrv";
	
	try{
		// JDBC 드라이버 로드
		Class.forName(jdbc_driver);

		// 데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
		conn = DriverManager.getConnection(jdbc_url,"web2017","2017");

		// Connection 클래스의 인스턴스로 부터 SQL  문 작성을 위한 Statement 준비
		String sql = "insert into jdbc_test values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("username"));
		pstmt.setString(2,request.getParameter("email"));

		// username 값을 입력한 경우 sql 문장을 수행.
		if(request.getParameter("username") != null) {
			pstmt.executeUpdate();
		}
	}
	catch(Exception e) {
		System.out.println(e);
	}
%>
<HTML>
<HEAD><TITLE>ch08 : JDBC 테스트 </TITLE></HEAD>
<BODY>
<div align="center">
<H2>이벤트 등록</H2>
<HR>

<form name=form1 method=post action=jdbctest.jsp>
등록이름 : <input type=text name=username>
email주소 : <input type=text name=email size=20>
<input type=submit value="등록">
</form>
<HR>
</div>
# 등록 목록<P>
<%
	try{
		// select 문장을 문자열 형태로 구성한다.
		String sql = "select username, email from jdbc_test";

		pstmt = conn.prepareStatement(sql);

		// select 를 수행하면 데이터정보가 ResultSet 클래스의 인스턴스로 리턴됨.
		ResultSet rs = pstmt.executeQuery();
		int i=1;

		// 마지막 데이터까지 반복함.
		while(rs.next()) {
			out.println(i+" : "+rs.getString(1)+" , "+rs.getString("email")+"<BR>");
			i++;
		}

		// 사용한 자원의 반납.
		rs.close();
		pstmt.close();
		conn.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
%>
</BODY>
</HTML>