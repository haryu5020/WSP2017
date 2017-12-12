<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "post.postDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.io.*" %>

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
	
	/* ���� ���ε� ���� */
	int maxSize = 1024*1024*10;
	String realFolder = ""; /* ���� ��� */
	String uploadFile = ""; /* ���ϸ� */
	String savePath = request.getServletContext().getRealPath("/file");
	File isDir = new File(savePath);
	if(!isDir.isDirectory()){
		System.out.println("No directory");
		isDir.mkdir();
	}
	String encoding = "euc-kr";		
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
	uploadFile = multi.getFilesystemName("postFile");
	
	String originFile = multi.getOriginalFileName("postFile");
	String sysFilename = multi.getFilesystemName("postFile"); /* ���� �̸� �ߺ��� ���� ����� �̸� */
	/* System.out.println(sysFilename); */
	File file = new File(savePath + uploadFile);
	
	/*======================================================== */
			
		String userID = null;
		String postTitle = multi.getParameter("postTitle");
		String postContent = multi.getParameter("postContent");
		/* writeForm.jsp �� �Է� form �� �ǵ���� multi������ �ޱ���� */
		
		if(session.getAttribute("id") != null){
			userID = (String) session.getAttribute("id");
		}
		if (postTitle == null || postContent == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�Է��� �� �� ������ �ֽ��ϴ�.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else
		{
			postDAO postDAO = new postDAO();
			int result = postDAO.write(postTitle, userID, postContent, sysFilename);
			if(result == -1)
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�۾��⿡ �����߽��ϴ�.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�۾��� �Ϸ�')");
				script.println("<script>");
				response.sendRedirect("main.jsp"); 
			}
		}
		
	%>
</body>
</html>