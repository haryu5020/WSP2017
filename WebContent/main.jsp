<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
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

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container"> <a class="navbar-brand" href="main.html" style="font-weight:bold; font-size:30px; margin:0; padding:0;">Fwitter</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"> <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a> </li>
                    <form action="logout.jsp" method="post"><li class="nav-item"> <a class="nav-link" href="#loginModal">logout</a> </li></form>
                    <li class="nav-item"> <a class="nav-link" href="#registerModal">Mypage</a> </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-3">	
				<div class="container">
					<div class="row" style="min-width:1000px;">
						<div class="col-lg-3 col-sm-6">
            				<div class="card hovercard">
                				<div class="cardheader">
                			</div>
                			<div class="avatar">
                    			<img src="http://lorempixel.com/100/100/people/9/">
                			</div>
                			<div class="info">
                    			<div class="title">
                        			<a target="_blank" href="#">HyunJun Sung</a>
                    			</div>
                    			<div class="desc">Passionate designer</div>
                    			<div class="desc">Curious developer</div>
                			</div>
                			<div class="bottom"> </div>
							</div>
						</div>
					</div>
                </div>
            	<div class="list-group" style="width:86%; margin-left:15px;"> 
               		<a href="#" class="list-group-item">Category 1</a> 
                	<a href="#" class="list-group-item">Category 2</a> 
                	<a href="#" class="list-group-item">Category 3</a>
            	</div>
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
                    <div class="well"> 
						<form class="form-horizontal" role="form">
							<h4>What's New</h4>
							<div class="form-group" style="padding:14px;">
								<textarea class="form-control" placeholder="Update your status"></textarea>
							</div>
							<button class="btn btn-primary pull-right" type="button">Post</button><ul class="list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
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
<<<<<<< HEAD
        
=======
>>>>>>> e69155899a57530c7c5bc4d0bb62e8bf373b1bf5
</body>

</html>