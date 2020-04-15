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
    <title>Regitration</title>

    
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



</head>
<body>
<body class="signup-page sidebar-collapse"><!-- FORM  -->


<div class="page-header header-filter"  style="background-image: url('assets/img/dg1.jpg'); background-size: cover; background-position: top center;">
    <div class="container">
        <div class="row">
            <div class="col-md-10 ml-auto mr-auto">

                <center>
                    <div class="card card-signup" style="color:red; margin-left:-50px; width: 500px;">
                        <h2 class="card-title text-center">Register</h2>


                        <div class="card-body">
                            <div class="row">

                                <div class="col-md-5 mr-auto">
                                    <div class="social text-center" style="/* margin-left: -1px; */
							position: relative;
							left: 128px;">  <!-- Three Balls -->

                                        <button class="btn btn-just-icon btn-round btn-twitter">
                                            <i class="fa fa-twitter"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-dribbble">
                                            <i class="fa fa-dribbble"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-facebook">
                                            <i class="fa fa-facebook"> </i>
                                        </button>   <!-- Three Balls -->

                                    </div>



         <form  method="POST" action="Userregister" class="form" style="width: 400px;">

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                         <span class="input-group-text">
                           <i class="material-icons">face</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="First Name..." id="first" name = "first" required  pattern="[a-zA-Z\s]+">
                 </div>
             </div>

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">face</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="Last Name..." id="last" name = "last" required  pattern="[a-zA-Z\s]+" >
                 </div>
             </div>

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">contact_mail</i>
                          </span>
                     </div>
                     <input type="email" class="form-control" placeholder="Email..." id="email" name = "email">
                 </div>
             </div>


             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                           <i class="material-icons">date_range</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="Age..." id="age" name = "age">
                 </div>
             </div>

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">stay_primary_portrait</i>
                          </span>
                     </div>
                     <input type="text" class="form-control" placeholder="Mobile..." maxlength="10" id="mobile" name = "mobile">
                 </div>
             </div>
             

             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">lock_outline</i>
                          </span>
                     </div>
                     <input type="password" placeholder="Password..." class="form-control" name ="password" id= "password">
                 </div>
             </div>



             <div class="form-group bmd-form-group">
                 <div class="input-group">
                     <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">lock</i>
                          </span>
                     </div>
                     <input type="password" class="form-control" placeholder="Confirm Password..."  name ="con_pass" id="con_pass">
                 </div>
             </div>


            <script type="text/javascript">

            var password= document.getElementById("password"), con_pass = document.getElementById("con_pass");

            function validatePassword(){
                var exp = /^(?=.*\d)(?=.[A-Z])(?!.*[^a-zA-Z0-9@#$^+=])(.{8,})$/;
                if(password.value !== con_pass.value){
                    con_pass.setCustomValidity("Password does not match the confirm password.");
                }
                else{
                    con_pass.setCustomValidity('');
                }
            }

            password.onchange = validatePassword;
            con_pass.onkeyup = validatePassword;

			</script>

        



             <div class="form-check">
                 <label class="form-check-label">
                     <input class="form-check-input" type="checkbox" value="" checked="">
                     <span class="form-check-sign">
                          <span class="check"></span>
                        </span>
                     I agree to the
                     <a href="#something">terms and conditions</a>.
                 </label>
             </div>



             <div class="text-center">
                 <i class="material-icons">how_to_reg</i>
                 <input type="submit" class="btn btn-primary btn-round" id="submit" name="submit" value="Submit" >

             </div>

         </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </center>

            </div>
        </div>
    </div>




</body>





</body>
</html>