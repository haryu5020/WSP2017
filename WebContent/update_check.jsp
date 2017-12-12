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
	/* 파일 업로드 관련 */
	int maxSize = 1024*1024*10;
	String realFolder = ""; /* 저장 경로 */
	String uploadFile = ""; /* 파일명 */
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
	String sysFilename = multi.getFilesystemName("postFile"); /* 파일 이름 중복시 실제 저장될 이름 */
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
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	postManager post = new postDAO().getPost(postID);
	if(!userID.equals(post.getUserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
		}else{
			if (request.getParameter("postTitle") == null || request.getParameter("postContent") == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				postDAO postDAO = new postDAO();
				int result = postDAO.update(postID,request.getParameter("postTitle"),request.getParameter("postContent"), sysFilename);
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
					script.println("</script>");
					response.sendRedirect("main.jsp");
				}
			}
		}
		
	%>
</body>
</html>