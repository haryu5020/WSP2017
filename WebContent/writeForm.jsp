<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="category.category" %>
<%@ page import="category.categoryDAO" %>
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
     <link href="${pageContext.request.contextPath}/css/dropdown.css" rel="stylesheet">
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
		 %>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container"> <a class="navbar-brand" href="main.jsp" style="font-weight:bold; font-size:30px; margin:0; padding:0;">Fwitter</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"> <a class="nav-link" href="main.jsp">Home<span class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link" href="logout.jsp">logout</a> </li>
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
                
            </div>
            <!-- /.col-lg-3 -->
            <div class="col-lg-9">
                
                <div class = "container">
                    <div class="row">
                    <form method="post" action="write_check.jsp">
                        <table class="table table-striped" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th colspan="3" style="text-aling: center;">글쓰기 양식</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control" placeholder="글 제목" name="postTitle" maxlength="50"></td>
                                </tr>
                                <tr>
                                		<td><input type="file" class="form-control" name="postFile"></td>
                                </tr>
                                <tr>
                                    <td><textarea class="form-control" placeholder="글 내용" name="postContent" maxlength="2048"></textarea></td>
                                </tr>
                                <tr>
                                
                                </tr>
                            </tbody>
                             
                        </table>
                        <input type="submit" class="btn btn-primary pull-right" value="글쓰기">
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
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
    var myDropdown = document.getElementById("myDropdown");
      if (myDropdown.classList.contains('show')) {
        myDropdown.classList.remove('show');
      }
  }
}
</script>

</html>