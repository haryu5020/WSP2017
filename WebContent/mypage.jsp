<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="post.postDAO" %>
<%@ page import="post.postManager" %>
<%@ page import="user.user" %>
<%@ page import="user.userDAO" %>
<%@ page import="java.util.ArrayList" %>
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
		String userID = null;
		if(session.getAttribute("id") != null){
			userID = (String) session.getAttribute("id");
		}
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
    <div class="container" style="margin-top:30px;">
        <div class="row">
            <div class="col-lg-3">
                <div class="container">
                    <div class="row" style="min-width:1080px;">
                        <div class="col-lg-3 col-sm-6">
                            <div class="card hovercard">
                                <div class="cardheader"> </div>
                                <div class="avatar"> <img> </div>
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
                <div class = "container"  style="width:400px;">
                    <div class="row">
                        <form action="mypage_check.jsp" method="post">
                        <table class="table table-striped" style="text-align: center;">
                            <thead >
                                <tr>
                                	<th colspan="3">회원 정보 </th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="text-aling: center;">아이디</td>
                                	<td colspan="2"><input type="text" class="form-control" name="userEmail" id="userEmail" value="<%= userID %>" readonly="readonly"></td>
                                </tr>
                                <tr>
                                	<td style="text-aling: center;">이름</td>
                                    <td colspan="2"><input type="text" class="form-control" name="userName" id="userName" value="<%= userInfo.getUserName() %>"></td>
                                </tr>
                                <tr>
                                	<td style="text-aling: center;">비밀번호</td>
                                    <td colspan="2"><input type="password" class="form-control" name="userPassword" id="userPassword"></td>
                                </tr>
                                <tr>
                                	<td style="text-aling: center;">직업</td>
                                    <td colspan="2"><input type="text" class="form-control" name="userJob" id="userJob" value="<%= userInfo.getUserJob() %>"></td>
                                </tr>
                                <tr>
                                	<td style="text-aling: center;">관심사</td>
                                    <td colspan="2"><input type="text" class="form-control" name="userFavorite" id="userFavorite" value="<%= userInfo.getUserFavorite() %>"></td>
                                </tr>
                                <tr>
                                	<td style="text-aling: center;">사진</td>
                                    <td colspan="2"><input type="text" class="form-control" name="userProfile" id="userProfile" value="1"></td>
                                </tr>
                            </tbody>
                        </table>
                        <a href="mypage_check.jsp" class="btn btn-primary pull-right">수정 완료</a>
                        </form>
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