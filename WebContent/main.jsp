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
        <div class="container"> <a class="navbar-brand" href="main.jsp" style="font-weight:bold; font-size:30px; margin:0; padding:0;">Fwitter</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"> <a class="nav-link" href="main.jsp">Home<span class="sr-only">(current)</span></a> </li>
                    <form action="logout.jsp" method="post">
                        <li class="nav-item"> <a class="nav-link" href="#loginModal">logout</a> </li>
                    </form>
                    <li class="nav-item"> <a class="nav-link" href="#registerModal">Mypage</a> </li>
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
                                <div class="avatar"> <img src="http://lorempixel.com/100/100/people/9/"> </div>
                                <div class="info">
                                    <div class="title"> <a target="_blank" href="#">HyunJun Sung</a> </div>
                                    <div class="desc">Passionate designer</div>
                                    <div class="desc">Curious developer</div>
                                </div>
                                <div class="bottom"> 
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="list-group" style="margin-top:30px; margin-bottom:20px"> <a href="#" class="list-group-item">Category 1</a> <a href="#" class="list-group-item">Category 2</a> <a href="#" class="list-group-item">Category 3</a> </div>
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
                <div class = "container">
                    <div class="row">
                        <table class="table table-striped" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th style="text-aling: center;">번호</th>
                                    
                                    <th style="text-aling: center;">제목</th>
                                    
                                    <th style="text-aling: center;">작성자</th>
                                    
                                    <th style="text-aling: center;">작성일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>안녕하세요</td>
                                    <td>홍길동</td>
                                    <td>2017-12-09</td>
                                </tr>
                            </tbody>
                        </table>
                        <a href="writeForm.jsp" class="btn btn-primary pull-right">글쓰기</a>
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