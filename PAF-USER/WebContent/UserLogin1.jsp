<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>


    <!-- Fonts and icons  -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="../maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

    <!-- CSS Files -->
    <link href="assets/css/material-kit.min1036.css?v=2.1.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/demo/demo.css" rel="stylesheet" />
    <link href="assets/demo/vertical-nav.css" rel="stylesheet" />

</head>
<body class="login-page sidebar-collapse">

<div class="page-header header-filter" style="background-image: url('assets/img/office4.jpg'); background-size: cover; background-position: top center;">


    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-8 ml-auto mr-auto">



                <form class="form" method="POST" action="User">

                    <div class="card card-login card-hidden">
                        <div class="card-header card-header-primary text-center">
                            <h4 class="card-title">Login</h4>
                            <div class="social-line">
                                <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
                                    <i class="fa fa-facebook-square"></i>
                                </a>
                                <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body ">
             <span class="bmd-form-group">
					<div class="input-group">
                    <div class="input-group-prepend">
                    <span class="input-group-text">
					<i class="material-icons">contact_mail</i>
                    </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Email..." id="email" name = "email">
					</div>
             </span>
                            <span class="bmd-form-group">
				</span>
                            <span class="bmd-form-group">
                   <div class="input-group">
                   <div class="input-group-prepend">
                   <span class="input-group-text">
                   <i class="material-icons">lock_outline</i>
                   </span>
                   </div>
                   <input type="password" class="form-control" placeholder="Password..." id= "password" name ="password" required>
                   </div>
             </span>
                        </div>

                        <div class="card-footer justify-content-center">
                            <input type="submit" class="btn btn-primary btn-round" value ="login" >
                        </div>





                    </div>

                </form>

            </div>
        </div>
    </div>

</body>
</html>