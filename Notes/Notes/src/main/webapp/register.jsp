<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes | EasyNotes</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
        <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #222;
            height: 100vh;
            
          }

          #login .container #login-row #login-column #login-box {
            margin-top: 120px;
            max-width: 600px;
            height: 550px;
            border: 1px solid #9C9C9C;
            background-color: #EAEAEA;
          }
          #login .container #login-row #login-column #login-box #login-form {
            padding: 20px;
          }
          #login .container #login-row #login-column #login-box #login-form #register-link {
            margin-top: -85px;
          }
          #link{
          margin-top:20px;
          color-decoration:none;
          }
    </style>
</head>
<body>
<div id="login">
            <h3 class="text-center text-white pt-5">Register to Add Notes</h3>
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <form id="login-form" class="form" action="registerbackend.jsp" method="post" >
                                <h3 class="text-center">Register</h3>
                                <div class="form-group">
                                    <label for="username" class="" >Username:</label><br>
                                    <input type="text" name="name" id="name" class="form-control">
                                </div>
                                   <div class="form-group">
                                    <label for="username" class="" >Email:</label><br>
                                    <input type="text" name="email" id="email" class="form-control">
                                </div>
                                   <div class="form-group">
                                    <label for="username" class="" >Phone:</label><br>
                                    <input type="text" name="phone" id="phone" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="password" class="">Password:</label><br>
                                    <input type="password" name="password" id="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input id="remember-me" name="remember-me" type="checkbox"> <span></span><label for="remember-me" class=""><span>Remember me</span> <span></span></label><br>
                                    <a href=login.jsp id="link" >Login?</a><br> 
                                   <input type="submit" name="submit" class="btn btn-info btn-md" value="submit" style="background-color:#5073FB;color:#FFFFFF; border:0ch;"> 
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>