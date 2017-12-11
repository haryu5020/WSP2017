<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "post.postDAO" %>
    <%@ page import = "java.io.PrintWriter" %>
    <jsp:useBean id="post" class="post.postManager" scope="page" />
    <jsp:setProperty name="post" property="postTitle" />
    <jsp:setProperty name="post" property="postContent" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("id") != null){
			userID = (String) session.getAttribute("id");
		}
		if (post.getPostTitle() == null || post.getPostContent() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else
		{
			postDAO postDAO = new postDAO();
			int result = postDAO.write(post.getPostTitle(), userID, post.getPostContent());
			if(result == -1)
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패했습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기 완료')");
				script.println("<script>");
				response.sendRedirect("main.jsp"); 
			}
		}
		
	%>
</body>
</html>