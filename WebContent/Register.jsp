<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Register</title>

<link rel="stylesheet"
	href="vendor/fontawesome-free-6.3.0-web/css/all.min.css" media="all"
	type="text/css">
<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all" type="text/css">
<!-- Vendor CSS-->
<link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet"
	media="all" type="text/css">
<!-- Main CSS-->
<link href="css/theme.css" rel="stylesheet" media="all" type="text/css">
</head>
<body>
<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <H1>REGISTER</H1>
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="register" method="post">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="Username" style="border-radius: 10px;">
                                </div>
                                <div class="form-group">
                                    <label>Email </label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="Email Address" style="border-radius: 10px;">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <div class="input-group">
                                      <input class="au-input au-input--full" type="password" name="password" placeholder="Password" id="password-field" style="border-radius: 10px;">
                                      <div class="input-group-append">
                                        <span class="input-group-text">
                                          <i class="fa fa-eye-slash toggle-password" id="toggle-password"></i>
                                        </span>
                                      </div>
                                    </div>
                                  </div>  
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="aggree">Agree the terms and policy
                                    </label>
                                </div>
                                <input type="submit" class="btn btn-dark btn-block" style="border-radius: 10px;"> <a href="#"  style="color: #fff;">Register</a>
                            </form>
                            <div class="register-link">
                                <p>
                                    Already have account?
                                    <a href="Login.jsp" >Sign In</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
     <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

    <script>
        const togglePassword = document.querySelector('#toggle-password');
        const passwordField = document.querySelector('#password-field');
      
        togglePassword.addEventListener('click', function(e) {
          const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
          passwordField.setAttribute('type', type);
          this.classList.toggle('fa-eye');
          this.classList.toggle('fa-eye-slash');
        });
      </script>

</body>
</html>