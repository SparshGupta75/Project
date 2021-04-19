
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->

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
        <title>Add Faculty</title>

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
                /*width: 50%;*/
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
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="HomePage.html">StuMan</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">


                        <li class="nav-item active">
                            <a class="nav-link" href="HomePage.html">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item active dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Faculty
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                                            <li><a class="dropdown-item" href="FacultyList.jsp">Faculty List</a></li>
                                            <li><a class="dropdown-item" href="#">Add Faculty</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li> 
                        <li class="nav-item active">
                            <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item active dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Student
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                                            <li><a class="dropdown-item" href="#">1st year Student List</a></li>
                                            <li><a class="dropdown-item" href="#">2nd year Student List</a></li>
                                            <li><a class="dropdown-item" href="#">3rd year Student List</a></li>
                                            <li><a class="dropdown-item" href="#">4th year Student List</a></li>
                                            <li><a class="dropdown-item" href="#">Add Student</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li> 

                        <li class="nav-item active">
                            <a class="nav-link" href="SignUpIn.html" >Fee Report</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="SignUpIn.html">Merit List</a>
                        </li>

                        <li class="nav-item active">
                            <form action="LogoutAdmin" method="post"><input type="submit" value="Logout" class="nav-link" style="background: #343a40; box-shadow: 0px 0px 0px transparent; border: 0px solid transparent; text-shadow:0px 0px 0px transparent; color: white"></form>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <!--        <div class="container">
                    <div class="row offset-2">
                        <div class="col-8">
                            <h1>Welcome </h1>
                        </div>
                    </div>
                </div>-->

        <!--        <div style="text-align: center">
                    <h1 style="color: black; margin-top:100px "><b>Welcome <%=session.getAttribute("name")%></b></h1>
                </div>-->
        <br>
        <br>
        <br>
        <br>
        <section id="form">
            <div class="content">
                <!-- Nav pills -->
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="pill" href="#login">Register Faculty</a>
                    </li>
                    <!--                    <li class="nav-item">
                                            <a class="nav-link" data-toggle="pill" href="#regis">Register</a>
                                        </li>-->
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="login" class="container tab-pane active">
                        <form action="AddFaculty" method="post" id="reg-form">
                            <!-- <div class="form-group">
                                <label for="InputName">Full Name</label>
                                <input type="text" class="form-control is-valid" id="InputName" placeholder="Full Name">
    
                            </div> -->
                            <div class="row form-group">
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="First name"
                                           aria-label="First name" name="fname" required>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" name="lname" required>
                                </div>
                            </div>

                            <!-- <div class="form-group">
                                <label for="InputUsername">Username</label>
                                <input type="text" class="form-control" id="InputUsername" placeholder="Username">
    
                            </div> -->
                            <div class="form-group">
                                <!-- <label for="exampleFormControlInput2">Email address</label> -->
                                <input type="text" class="form-control" id="exampleFormControlInput2"
                                       placeholder="Faculty ID" name="fid" required>
                            </div>

                            <div class="form-group">
                                <!-- <label for="exampleFormControlInput2">Email address</label> -->
                                <input type="email" class="form-control" id="exampleFormControlInput2"
                                       placeholder="Email Address" name="email" required>
                            </div>

                            <div class="form-group">
                                <!-- <label for="exampleInputPassword2">Password</label> -->
                                <input type="password" class="form-control" id="exampleInputPassword2"
                                       placeholder="Password" name="pass" required>
                            </div>

                            <!-- <div class="form-group">
                                <label for="exampleInputPasswordVer">Verify Password</label>
                                <input type="password" class="form-control is-invalid" id="exampleInputPasswordVer"
                                    placeholder="Password">
                            </div> -->

                            <label for="inlineRadioOptions"> Gender: </label>
                            <div class="form-check form-check-inline ml-2">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                       value="M">
                                <label class="form-check-label" for="inlineRadio1">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2"
                                       value="F">
                                <label class="form-check-label" for="inlineRadio2">Female</label>
                            </div>
                            <br>
                            <div class="mt-2">
                                <label for="dropdown">Branch: </label>
                                <select class="form-select  ml-1" aria-label="Default select example" id="dropdown" name="branch">

                                    <option selected>Select Branch</option>
                                    <option >CSE</option>
                                    <option >ECE</option>
                                </select>
                            </div>

                            <div class="mt-2">
                                <label for="date">Date of Birth: </label>
                                <input type="date" id="date" class=" ml-1" name="dob">
                            </div>


                            <div class="container text-center mt-2" id="loader" style="display: none;">
                                <span class="fa fa-refresh fa-spin fa-3x"></span>
                                <h4>Please wait...</h4>
                            </div>
                            <button type="submit" class="btn btn-success mt-1" id="submit-btn">Submit</button>
                        </form>
                    </div>



                    <!--                    <div id="regis" class="container tab-pane fade">
                                            <form action="signUp" method="post">
                                                 <div class="form-group">
                                                    <label for="InputName">Full Name</label>
                                                    <input type="text" class="form-control is-valid" id="InputName" placeholder="Full Name">
                        
                                                </div> 
                                                <div class="row form-group">
                                                    <div class="col">
                                                        <input type="text" class="form-control" placeholder="First name"
                                                               aria-label="First name" name="fname" required>
                                                    </div>
                                                    <div class="col">
                                                        <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" name="lname" required>
                                                    </div>
                                                </div>
                    
                                                 <div class="form-group">
                                                    <label for="InputUsername">Username</label>
                                                    <input type="text" class="form-control" id="InputUsername" placeholder="Username">
                        
                                                </div> 
                                                <div class="form-group">
                                                     <label for="exampleFormControlInput2">Email address</label> 
                                                    <input type="text" class="form-control" id="exampleFormControlInput2"
                                                           placeholder="SID" name="sid" required>
                                                </div>
                    
                                                <div class="form-group">
                                                     <label for="exampleFormControlInput2">Email address</label> 
                                                    <input type="email" class="form-control" id="exampleFormControlInput2"
                                                           placeholder="Email Address" name="email" required>
                                                </div>
                    
                                                <div class="form-group">
                                                     <label for="exampleInputPassword2">Password</label> 
                                                    <input type="password" class="form-control" id="exampleInputPassword2"
                                                           placeholder="Password" name="pass" required>
                                                </div>
                    
                                                 <div class="form-group">
                                                    <label for="exampleInputPasswordVer">Verify Password</label>
                                                    <input type="password" class="form-control is-invalid" id="exampleInputPasswordVer"
                                                        placeholder="Password">
                                                </div> 
                    
                                                <label for="inlineRadioOptions"> Gender: </label>
                                                <div class="form-check form-check-inline ml-2">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                           value="M">
                                                    <label class="form-check-label" for="inlineRadio1">Male</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2"
                                                           value="F">
                                                    <label class="form-check-label" for="inlineRadio2">Female</label>
                                                </div>
                                                <br>
                                                <div class="mt-2">
                                                    <label for="dropdown">Branch: </label>
                                                    <select class="form-select  ml-1" aria-label="Default select example" id="dropdown" name="branch">
                    
                                                        <option selected>Select Branch</option>
                                                        <option >CSE</option>
                                                        <option >ECE</option>
                                                    </select>
                                                </div>
                    
                                                <div class="mt-2">
                                                    <label for="date">Date of Birth: </label>
                                                    <input type="date" id="date" class=" ml-1" name="dob">
                                                </div>
                                                <button type="submit" class="btn btn-success mt-1">Submit</button>
                                            </form>
                                        </div>-->
                </div>
            </div>
        </section>

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

                    $("#submit-btn").hide();
                    $("#loader").show();

                    $.ajax({
                        url: "AddFaculty",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {

                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {

                                swal({
                                    title: "Success!",
                                    text: "The faculty member has been succesfully registered.",
                                    icon: "success",
                                });
                            } else
                            {
                                swal({
                                    title: "Error!",
                                    text: "Something went wrong. Please, try again.",
                                    icon: "error",
                                });
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

        <!--        <script>
                    $(document).ready(function (){
                        console.log("loaded...");
                        
                        $('#reg-form').on('submit',function (event){
                            event.preventDefault();
                            
                            let form = new FormData(this);
                            
                            //send Register servlet
                            $.ajax({
                               url: "AddFaculty",
                               type: 'POST',
                               data: form,
                               success: function (data, textStatus, jqXHR) {
                                console.log(data);
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                            },
                            processData: false,
                            contentType: false
                            });
                        });
                    });
                    
                </script>-->




    </body>
</html>
