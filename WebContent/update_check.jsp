<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ page import = "post.postManager" %>
    <%@ page import = "post.postDAO" %>
    <%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int postID = 0;
		if(request.getParameter("postID") != null){
			postID = Integer.parseInt(request.getParameter("postID"));
		}
		if (postID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'main.jsp'");
			script.println("<script>");
		}
		postManager post = new postDAO().getPost(postID);
		if(!userID.equals(post.getUserID())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = 'main.jsp'");
			script.println("<script>");
		}else{
			if (request.getParameter("PostTitle") ==null || request.getParameter("PostContent") == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				postDAO postDAO = new postDAO();
				int result = postDAO.update(postID,request.getParameter("PostTitle"),request.getParameter("PostContent") );
				if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글 수정에 실패했습니다.')");
				script.println("history.back()");
				script.println("</script>");
				}else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글 수정 완료')");
					script.println("location.href = 'main.jsp'");
					script.println("<script>");
				}
			}
		}
		
	%>
</body>
</html>