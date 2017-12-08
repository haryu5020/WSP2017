<!--<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr");
%>-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Welcome to Fwitter</title>
        <link href="./vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="./css/loginForm.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    </head>
    <body>
        <!--<%
           if(session.getAttribute("id") == null){
           %>-->
            <div id="box">
            <div class="container">
                <div class="center-block">
                    <img src="./img/loginlogo.PNG"/>
                    <form method="post" action='login_check.jsp' name="login_form">
                        <p>
                            <input type="text" class="form-control input-md" name="eid" id="email" placeholder="Email"> </p>
                        <p>
                            <input type="password" class="form-control input-md" name="passwd" placeholder="Password"> </p>
                        <p>
                            <button type="submit" class="btn btn-primary" id="sign-in-button">Sign in</button>
                            <a href="register.jsp">Sign up?</a>
                            <a href="#">Forgot Password?</a> 
                        </p>
                    </form>
                </div>
            </div>
            </div>
        <%
           }
           else{
                response.sendRedirect("main.jsp");
           }
        %>
    </body>
</html>