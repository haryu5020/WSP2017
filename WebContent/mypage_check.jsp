<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="post.postDAO" %>
<%@ page import="post.postManager" %>
<%@ page import="user.userDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.io.*" %>

<jsp:useBean id="user" class="user.user" scope="page" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userFavorite" />
<jsp:setProperty name="user" property="userJob" />
<jsp:setProperty name="user" property="userProfile" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Fwitter</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/profile.css" rel="stylesheet">
     <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
</style>
<body>
	<%
	/* 파일 업로드 관련 */
	int maxSize = 1024*1024*10;
	String realFolder = ""; /* 저장 경로 */
	String uploadFile = ""; /* 파일명 */
	String savePath = request.getServletContext().getRealPath("./profile/");
	File isDir = new File(savePath);
	if(!isDir.isDirectory()){
		System.out.println("No directory");
		isDir.mkdir();
	}
	String encoding = "euc-kr";		
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
	uploadFile = multi.getFilesystemName("userProfile");
	
	String originFile = multi.getOriginalFileName("userProfile");
	String sysFilename = multi.getFilesystemName("userProfile"); /* 파일 이름 중복시 실제 저장될 이름 */
/* 	System.out.println(sysFilename); */
	File file = new File(savePath + uploadFile);
	/*======================================================== */
		String userEmail = multi.getParameter("userEmail");
		String userPassword = multi.getParameter("userPassword");
		String userName = multi.getParameter("userName");
		String userFavorite = multi.getParameter("userFavorite");
		String userJob = multi.getParameter("userJob");
		
		
		String userID = null;
		if(session.getAttribute("id") != null){
			userID = (String) session.getAttribute("id");
		}

		userDAO userDAO = new userDAO();
		int result = userDAO.update(userName, userFavorite, userJob, sysFilename, userID, userPassword);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB error.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Update your Information!')");
			script.println("location.href = 'mypage.jsp'");
			script.println("</script>");
			}	
		
	%>
    
</body>

</html>