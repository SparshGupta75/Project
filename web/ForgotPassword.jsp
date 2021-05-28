<%-- 
    Document   : ForgotPassword
    Created on : 23 May, 2021, 4:00:01 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            #footer {
                background-color: #242526;
                color: white;
            }

            .footer-img {
                width: 100%;
                height: 100px;
            }

            .footer-box {
                padding-top: 50px;
            }

            .footer-box img {
                width: 120px;
                margin-bottom: 20px;

            }

            .contactus {
                font-size: 35px;
                font-weight: 600;
            }

            #footer {
                margin-top: 350px;
            }

            .footer-box .fa {
                margin-right: 8px;
                font-size: 25px;
                height: 40px;
                width: 40px;
                text-align: center;
                padding-top: 7px;
            }

            .footer-box .form-control {
                box-shadow: none;
                border: none;
                border-radius: 0;
                margin-top: 25px;
                max-width: 250px;
            }

            .footer-box .btn-primary {
                box-shadow: none !important;
                border: none;
                border-radius: 0;
                margin-top: 30px;
            }

            .footer-box button {
                display: inline-block;
            }

            #footer .container .row .footer-box .fbox {
                text-decoration: none;
                color: white;
            }

            #form {
                margin-top: 10px;
                margin-bottom: 420px;

            }

            .content {
                width: 450px;
                height: auto;
                margin: 0 auto;
                padding: 30px;
            }

            .nav-pills {
                width: 450px;
            }

            .nav-item {
                width: 50%;
            }

            .nav-pills .nav-link {
                font-weight: bold;
                padding-top: 13px;
                text-align: center;
                /* background: #343436;
                color: #fff; */
                border-radius: 30px;
                height: 100px;
                background: #e8e8e8;
                color: #000;
            }

            .nav-pills .nav-link.active {
                /* background: whitesmoke;
                color: #000; */
                background: #343436;
                color: #fff;
            }

            .tab-content {
                position: absolute;
                width: 450px;
                height: auto;
                margin-top: -50px;
                background: #fff;
                color: #000;
                border-radius: 30px;
                z-index: 1000;
                box-shadow: 0px 10px 10px rgba(0, 0, 0, 0.4);
                padding: 30px;
                margin-bottom: 50px;
            }

            .tab-content button {
                border-radius: 15px;
                width: 100px;
                margin: 0 auto;
                float: right;
            }
        </style>
        <title>Forgot Password</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="HomePage.html">StuMan</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse mr-right" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto mr-right">
                        <li class="nav-item active mr-right">
                            <a class="nav-link mr-right" href="HomePage.html">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="SignUpIn.jsp">Login</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


        <br>
        <br>
        <br>
        <br>    

        <!--content-->
        <section id="form">
            <div class="content">
                <!-- Nav pills -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="pill" href="#login">Forgot your Password?</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="login" class="container tab-pane active">
                        <form action="ForgotPassword" method="post" id="reg-form">


                            <h5>Don't worry! Just fill in your email and we'll send you an OTP, which after filling you can reset your password.</h5>

                            <div class="form-group">
                                <!--<label for="exampleFormControlInput2">Email address</label>--> 
                                <input type="text" class="form-control mt-4" id="exampleFormControlInput2"
                                       placeholder="Email Address" name="email" required>
                            </div>
                            <div class="form-group">
                                <select class="form-select" aria-label="Default select example" name="role" required>
                                    <option selected value="" disabled="">Select Role</option>
                                    <option >Faculty</option>
                                    <option >Student</option>
                                </select>
                            </div>



                            <div class="container text-center mt-2" id="loader" style="display: none;">
                                <span class="fa fa-refresh fa-spin fa-3x"></span>
                                <h4>Please wait...</h4>
                            </div>
                            <button type="submit" class="btn btn-success mt-1" id="submit-btn">Next Step</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        <!--end of content-->

        <section id="footer">
            <img src="wavefooter.png" class="footer-img" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 footer-box">
                        <img src="https://www.pngfind.com/pngs/m/80-804566_skull-logo-png-images-rh-logospng-com-cool.png"
                             width="120px" height="70px" alt="">
                        <p>
                            <b>lorem ipsum <br> </b>
                            Lorem ipsum dolor sit amet consectetur adipisicing, elit. Minus corrupti a quas quos doloribus
                            hic, laborum iusto repellat, repudiandae? Vel porro, nam ducimus eveniet est animi qui, quae
                            suscipit corporis?
                        </p>
                    </div>
                    <div class="col-md-4 footer-box">
                        <p><b class="contactus">Contact me</b></p>

                        <p><i class="fa fa-map-marker"></i><a
                                href="https://earth.google.com/web/search/4%c2%b017%e2%80%9921.49%e2%80%b3+S+31%c2%b023%e2%80%9946.46%e2%80%b3+E/@-4.2891128,31.39655122,1155.08029319a,11.91151009d,35y,-93.71442947h,32.91604588t,0r/data=CigiJgokCWfsrhl2YjtAEZoyQSwxYDtAGZ0bU-Ke0UBAIebcjEAw0EBA"
                                class="fbox"> Address</a></p>

                        <p><i class="fa fa-phone"></i> +91 123456789</p>

                        <p><i class="fa fa-envelope"></i> demo@gmail.com</p>
                    </div>
                    <div class="col-md-4 footer-box">
                        <p><b>Write your thoughts <br></b></p>
                        <input type="text" class="form-control" placeholder="Write here...">
                        <button type="button" class="btn btn-primary">Send</button>
                    </div>
                </div>

            </div>
        </section>
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--<script src="js/myjs.js" type="text/javascript"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>
            $(document).ready(function () {
                console.log("loaded...");

                $('#reg-form').on('submit', function (event) {

                    event.preventDefault();

                    let form = new FormData(this);

//                    $("#submit-btn").hide();
//                    $("#loader").show();

                    $.ajax({
                        url: "ForgotPassword",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {

                            console.log(data);
//                            $("#submit-btn").show();
//                            $("#loader").hide();

                            if (data.trim() === 'No')
                            {

                                swal({
                                    title: "Error!",
                                    text: "This Email is not registered. Please use registered mail.",
                                    icon: "error",
                                }).then(function () {
                                    window.location = "SignUpIn.jsp";
                                });

                            }
                            else if(data.trim()==='yes')
                            {
                                window.location = "verify.jsp";
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();

                            swal({
                                title: "Error!",
                                text: "Something went wrong. Please, try again.",
                                icon: "error",
                            });

                        },
                        processData: false,
                        contentType: false
                    });

                });
            });
        </script>
    </body>
</html>
