<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Welcome to Fwitter</title>
    <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/registerForm.css" rel="stylesheet"> </head>

<body>
    <div id="box">
        <div class="container">
            <div class="center-block"> <img src="./img/loginlogo.PNG" />
                <h2>Be Simple, Be Smart!</h2>
                <form method="post" action='register_check.jsp' name="register_form" onsubmit="return input_check_func()">
                    <div id="register_legend">
                        <legend>Join Fwitter and Get Everything!</legend>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="userName">Name</label>
                        <input type="text" class="form-control input-md" name="userName" id="userName" placeholder="Input your name"> </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="userId">Email</label>
                        <input type="text" class="form-control input-md" name="userId" id="userId" placeholder="Input your Email"> </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="userPw">Password</label>
                        <input type="password" class="form-control input-md" name="userPw" id="userPw" placeholder="Input your Password"> </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="userFavorite">Favorite</label>
                        <input type="text" class="form-control input-md" name="userFavorite" id="userFavorite" placeholder="Input your Favorite"> </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="userJob">Job</label>
                        <input type="text" class="form-control input-md" name="userJob" id="userJob" placeholder="Input your Job"> </div>
                    <div class="form-group">
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-primary" id="sign-in-button">Sign up</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
    
        function input_check_func() {
            var name = document.getElementById('userName').value;
            var id = document.getElementById('userId').value;
            var pw = document.getElementById('userPw').value;
            var favorite = document.getElementById('userFavorite').value;
            var job = document.getElementById('userJob').value;
            
            if (name==null || id == null || pw == null || favorite == null || job==null || name == "" || id == "" || pw == "" || favorite == "" || job=="") {
                alert("Don't make a blank!");
                return false;
            }
            else {
            		alert("회원가입 성공 !!");
                return true;
            }
        }
    </script>
</body>

</html>