
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="FacultyPackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->


        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>JSP Page</title>

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


        </style>
    </head>
    <body>
        <%

            User user = (User) session.getAttribute("currentUser");
            if (user == null) {
                response.sendRedirect("SignUpIn.jsp");
            }

        %>
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
                            <a class="nav-link" href="SignUpIn.html" >Add Marks</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="SignUpIn.html">Merit List</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="SignUpIn.html">Student List</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="LogoutServlet">Logout</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>




        <div style="text-align: center">
            <h1 style="color: black; margin-top:100px "><b>Welcome <a href="#!" data-bs-toggle="modal" data-bs-target="#Profile-modal" style="text-decoration: none;"><%= user.getFirstName()%></a></b></h1>
        </div>



        <!-- Modal -->
        <div class="modal fade" id="Profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header bg-dark text-white text-center">
                        <h5 class="modal-title" id="exampleModalLabel">Your Information</h5>
                        <!--<button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>-->
                    </div>
                    <div class="modal-body container text-center">
                        <h5 class="modal-title" id="exampleModalLabel"><%= user.getFirstName()%>  <%= user.getLastName()%></h5><br>
                        <!--details in a table-->
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th scope="row">ID: </th>
                                    <td><%= user.getFID()%></td>
                                </tr>
                                <tr>
                                    <th scope="row">Email Address: </th>
                                    <td><%= user.getEmail()%></td>
                                </tr>
                                <tr>
                                    <th scope="row">Branch: </th>
                                    <td colspan="2"><%
                                        String branch = user.getBranchID();
                                        if (branch.equals("1")) {
                                            branch = "CSE";
                                        } else {
                                            branch = "ECE";
                                        }
                                        out.print(branch);
                                        %>

                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">Date of Birth:  </th>
                                    <td><%
                                        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                        String dob = user.getDob();
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
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <!--<button type="button" class="btn btn-primary">Save changes</button>-->
                    </div>
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


        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    </body>
</html>
