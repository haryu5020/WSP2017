<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
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
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet"> </head>
<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<body>
    <!--DB Connecting -->
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
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container"> <a class="navbar-brand" href="main.html" style="font-weight:bold; font-size:30px; margin:0; padding:0;">Fwitter</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"> <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item"> <a class="nav-link" data-toggle="modal" href="#loginModal">Login</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-toggle="modal" href="#registerModal">Sign-up</a> </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <h1 class="my-4">Profile</h1>
                <div class="list-group"> <a href="#" class="list-group-item">Category 1</a> <a href="#" class="list-group-item">Category 2</a> <a href="#" class="list-group-item">Category 3</a> </div>
            </div>
            <!-- /.col-lg-3 -->
            <div class="col-lg-9">
                <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4"> </div>
                    <div class="col-lg-4 col-md-6 mb-4"> </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h4 class="card-title">
                    <a href="#">contents</a>
                  </h4>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer"> <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small> </div>
                        </div>
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
        <%
        }catch(SQLException ex){
        	
        }finally{
        	
        }
        %>
</body>
<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModallabel" aria-hidden="true">
    <div class="modal-dialog" style="width:310px">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Login to Fwitter</h3>
                <button type="button" class="close" data-dismiss="modal">x</button>
            </div>
            <div class="modal-body">
                <form method="post" action='' name="login_form">
                    <p>
                        <input type="text" class="form-control input-md" name="eid" id="email" placeholder="Email"> </p>
                    <p>
                        <input type="password" class="form-control input-md" name="passwd" placeholder="Password"> </p>
                    <p>
                        <button type="submit" class="btn btn-primary" id="sign-in-button">Sign in</button> <a href="#">Forgot Password?</a> </p>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="myModallabel" aria-hidden="true">
    <div class="modal-dialog" style="width:310px;">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Register to Fwitter</h3>
                <button type="button" class="close" data-dismiss="modal">x</button>
            </div>
            <div class="modal-body">
                <form method="post" action='' name="register_form" class="form-horizontal">
                    <p>
                        <input type="text" class="form-control input-md" name="pname" id="name" placeholder="Input your Name"> </p>
                    <p>
                        <input type="text" class="form-control input-md" name="eid" id="email" placeholder="Input your NEW Email ID"> </p>
                    <p>
                        <input type="password" class="form-control input-md" name="password" id="password" placeholder="Input NEW Password"> </p>
                    <p>
                        <input type="password" class="form-control input-md" name="password" id="password" placeholder="Confirm Password"> </p>
                    <p>
                        <button type="submit" class="btn btn-primary" id="reg-button">Register</button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>

</html>