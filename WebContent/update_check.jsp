<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ page import = "post.postManager" %>
    <%@ page import = "post.postDAO" %>
    <%@ page import = "java.io.PrintWriter" %>
    <%@ page import = "java.io.PrintWriter" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.io.*" %>
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
	String savePath = request.getServletContext().getRealPath("file");
	System.out.println(savePath);
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
	if(session.getAttribute("id") != null){
		userID = (String) session.getAttribute("id");
	}
	int postID = 0;
	if(request.getParameter("postID") != null){
		postID = Integer.parseInt(request.getParameter("postID"));
	}
	System.out.println(postID);
	if (postID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('��ȿ���� ���� ���Դϴ�.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	postManager post = new postDAO().getPost(postID);
	if(!userID.equals(post.getUserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('������ �����ϴ�.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
		}else{
			if (request.getParameter("postTitle") == null || request.getParameter("postContent") == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�Է��� �� �� ������ �ֽ��ϴ�.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				postDAO postDAO = new postDAO();
				int result = postDAO.update(postID,request.getParameter("postTitle"),request.getParameter("postContent"), sysFilename);
				if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�� ������ �����߽��ϴ�.')");
				script.println("history.back()");
				script.println("</script>");
				}else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('�� ���� �Ϸ�')");
					script.println("</script>");
					response.sendRedirect("main.jsp");
				}
			}
		}
		
	%>
</body>
</html>