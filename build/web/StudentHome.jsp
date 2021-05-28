
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>


<%    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");

//        session.getAttribute("name");
//        
//        if(session.getAttribute("name")==null)
//            response.sendRedirect("SignUpIn.html");
    Student student = (Student) session.getAttribute("currentUser");
    if (student == null) {
        response.sendRedirect("SignUpIn.jsp");
    }

%>
<%@page import="StudentPackage.Student"%>
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
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <title>Home - <%= student.getFirstName()%></title>

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
                margin-top: 90px;
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
                            <a class="nav-link" href="SignUpIn.html" >Marks</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="feestatus.jsp">Fee Status</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="SignUpIn.html">Merit List</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="StudentList.jsp">Student List</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="Posts.jsp">Posts</a>
                        </li>

                        <li class="nav-item active">
                            <form action="logout" method="post"><input type="submit" value="Logout" class="nav-link" style="background: #343a40; box-shadow: 0px 0px 0px transparent; border: 0px solid transparent; text-shadow:0px 0px 0px transparent; color: white"></form>
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

        <div class="container text-center">
            <div class="row">
                <div class="col-md-6 offset-3">
                    <br><br>
                    <div style="text-align: center">
                        <h1 style="color: black; margin-top:100px " class="mb-4"><b>Welcome <%= student.getFirstName()%> <%= student.getLastName()%></b></h1>
                    </div>
                    <table class="table table-bordered border-4">
                        <tbody>
                            <tr>
                                <td>SID </td>
                                <td><%= student.getSID()%></td>
                            </tr>
                            <tr>
                                <td>Email </td>
                                <td style="padding-left: -50px;"><%= student.getEmail()%></td>
                            </tr>
                            <tr>
                                <td>DOB </td>
                                <td><%
                                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                    String dob = student.getDob();
                                    try {
                                        java.util.Date date = (java.util.Date) formatter.parse(dob);
                                        SimpleDateFormat formatter1 = new SimpleDateFormat("MMM dd, yyyy");
                                        String DOB = formatter1.format(date);
                                        out.println(DOB);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    %></td>
                            </tr>
                            <tr>
                                <td>Gender </td>
                                <td><%
                                    String g = student.getGender();
                                    if (g.equals("M")) {
                                        out.println("Male");
                                    } else {
                                        out.println("Female");
                                    }


                                    %></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <br><br>
        <div class="container text-center">
            <div class="row">
                <div class="col-md-8 offset-2">
                    <hr class="mt-3">
                    <p><b id="motivation">Motivational Quote:<br> </b></p>
                </div>
            </div>
        </div>


        <section id="footer">
            <img src="wavefooter.png" class="footer-img" alt="" color="black">
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
        <script src="JSFiles/quote.js"></script>
    </body>
</html>
