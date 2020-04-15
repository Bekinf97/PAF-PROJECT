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
    <title>Profile</title>


    <!-- Extra details for Live View on GitHub Pages -->
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://www.creative-tim.com/product/material-kit-pro" />


    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="../../../maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="assets/css/material-kit.min1036.css?v=2.1.1" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/demo/demo.css" rel="stylesheet" />
    <link href="assets/demo/vertical-nav.css" rel="stylesheet" />
    <link href="assets/css/profile.css" rel="stylesheet" />




</head>

<body class="signup-page sidebar-collapse">
<div class="page-header header-filter" style="background-image: url('assets/img/bg2.jpg'); background-size: cover; background-position: top center;">
    <div class="container">
        <div class="row">
            <div class="col-md-10 ml-auto mr-auto">

                <center>


                    <div class="card card-signup" style="color:red;margin-left:-50px;width: 500px;">



                        <div>
                            <i class="material-icons">account_circle</i>
                            <h2 class="card-title text-center">My Profile</h2>

                        </div>




                        <div class="card-body">
                            <div class="row">

                                <div class="col-md-5 mr-auto">
                                    <div class="social text-center" style=" /* margin-left: -1px; */
							position: relative;
							left: 128px;">
                                        <button class="btn btn-just-icon btn-round btn-twitter">
                                            <i class="fa fa-twitter"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-dribbble">
                                            <i class="fa fa-dribbble"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-facebook">
                                            <i class="fa fa-facebook"> </i>
                                        </button>

                                    </div>


                                    <form class="form" method="POST" action="Userupdate" style="width: 400px;">

                                        

                                         <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                         <span class="input-group-text">
                           <i class="material-icons">face</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="First Name..." id="first" name = "first"required value="${first}" required  pattern="[a-zA-Z\s]+">
                 </div>
             </div>

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">face</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="Last Name..." id="last" name = "last" required value="${last}" required  pattern="[a-zA-Z\s]+" >
                 </div>
             </div>

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">contact_mail</i>
                          </span>
                     </div>
                     <input type="email" class="form-control" placeholder="Email..." id="email" name = "email" required value="${email}">
                 </div>
             </div>


             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                           <i class="material-icons">date_range</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="Age..." id="age" name = "age" required value="${age}" >
                 </div>
             </div>

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">stay_primary_portrait</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="Mobile..." maxlength="10" id="mobile" name = "mobile" required value="${mobile}">
                 </div>
             </div>
             

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">lock_outline</i>
                          </span>
                     </div>
                     <input type="password" placeholder="Password..." class="form-control" name ="password" id= "password" required value="${password}">
                 </div>
             </div>



             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">lock</i>
                          </span>
                     </div>
                     <input type="password" class="form-control" placeholder="Confirm Password..."  name ="con_pass" id="con_pass" required value="${password}">
                 </div>
             </div>

             <script type="text/javascript">

            var password= document.getElementById("password"), con_pass = document.getElementById("con_pass");

            function validatePassword(){
                var exp = /^(?=.*\d)(?=.[A-Z])(?!.*[^a-zA-Z0-9@#$^+=])(.{8,})$/;
                if(password.value !== con_pass.value){
                    con_pass.setCustomValidity("Password does not match the confirm password. Please re-enter the confirm password.");
                }
                else{
                    con_pass.setCustomValidity('');
                }
            }

            password.onchange = validatePassword;
            con_pass.onkeyup = validatePassword;

			</script>

                                           

                                        <div class="text-center">

                                            <input type="submit" id="submit" name="submit" value="UpdateAccount" class="btn btn-primary btn-round"  style=" margin-left: -200px;  margin-top :50px; " >


                                        </div>

								 </form>

								<form action="DeleteAcc" method="post">
                                    <div class="text-center">

											<input type="hidden" value="${email}" name="email"/>
                                            <input type="submit"   id="submit" name="delete" class="btn btn-primary btn-round" value="Delete My Account" style=" margin-left: 230px; margin-top :-75px;background-color: red;">

								


                                    </div>
									
								</form>
								
								
									<!--	<form action="DeleteAcc" method="post">
		
		
		
										<input value="${email}" name="email"/">
		
										<input type="hidden" value="${email}" name="email"/>
										<input value="DeleteAcount" type="submit" id="submit">  
		
		
		
		
										</form> -->


                                      

                                   
                                </div>
                            </div>
                        </div>
                    </div>

            </center>

        </div>
    </div>







</div>







</body>
</html>