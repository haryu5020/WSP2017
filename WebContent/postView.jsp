<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="java.io.PrintWriter" %>
 <%@ page import="post.postManager" %>
  <%@ page import="post.postDAO" %>
  <%@ page import="user.user" %>
  <%@ page import="user.userDAO" %>
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

<body>
<% 
	String userID = null;
	if(session.getAttribute("id") != null){
		userID = (String) session.getAttribute("id");
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
	userDAO userDAO = new userDAO();
	user userInfo = userDAO.getAllUserInfo(userID);
%>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container"> <a class="navbar-brand" href="main.jsp" style="font-weight:bold; font-size:30px; margin:0; padding:0;">Fwitter</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"> <a class="nav-link" href="main.jsp">Home<span class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link" href="logout.jsp">logout</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="mypage.jsp">Mypage</a> </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Page Content -->
    <div class="container" style="margin-top:30px;  margin-bottom: 10px;">
        <div class="row">
            <div class="col-lg-3">
                <div class="container">
                    <div class="row" style="min-width:1080px;">
                        <div class="col-lg-3 col-sm-6">
                            <div class="card hovercard">
                                <div class="cardheader"> </div>
                                <div class="avatar"> <img src="./profile/<%=userInfo.getUserProfile()%>"> </div> <!-- 프사 부 -->
                                <div class="info">
                                    <div class="title"><a target="_blank" href="mypage.jsp"><%=userInfo.getUserName() %></a> </div>
                                    <div class="desc"><%=userInfo.getUserJob() %></div>
                                    <div class="desc"><%=userInfo.getUserFavorite() %></div>
                                </div>
                                <div class="bottom"> 
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <!-- /.col-lg-3 -->
            <div class="col-lg-9">
               
                <div class = "container">
                    <div class="row">
                    
                        <table class="table table-striped" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th colspan="3" style="text-align: center;">게시 글</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width: 20%;">글 제목 </td>
                                    <td colspan=2><%= post.getPostTitle() %></td>
                                </tr>
                                <tr>
                                    <td>작성자 </td>
                                    <td colspan=2><%= post.getUserName() %></td>
                                </tr>
                                <tr>
                                    <td>작성 일자 </td>
                                    <td colspan=2><%= post.getPostDate().substring(0, 11) + post.getPostDate().substring(11, 13)+"시" + post.getPostDate().substring(14, 16) + "분" %></td>
                                </tr>
                                <tr>
                                    <td>내용 </td>
                                    <td colspan=2 style="height: 200px; text-align: left;"><%= post.getPostContent().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
                                </tr>
                                 <tr>
                                		<td> 파일 </td>
                                		<td colspan=2><a href="file/<%=post.getPostFile()%>" download> <%= post.getPostFile() %></a></td>
                                </tr>
                            </tbody>
                             
                        </table>
                        <a href="main.jsp" class="btn btn-primary">목록</a>
                        <%
                        	if(userID != null && userID.equals(post.getUserID())){
                        %>
                        	<a href="update.jsp?postID=<%=postID %>" class="btn btn-primary"> 수정</a>
                        	<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delete.jsp?postID=<%= postID %>" class="btn btn-primary"> 삭제</a>
                        <%
                        	}
                        %>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.col-lg-9 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Fwitter 2017</p>
        </div>
        <!-- /.container -->
    </footer>
</body>

</html>