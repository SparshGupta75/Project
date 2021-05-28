
<%@page import="StudentPackage.Student"%>
<%@page import="Posts.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="StudentPackage.ConnectionProvider"%>
<%@page import="Posts.PostDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Posts</title>
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
        <link href="https://getbootstrap.com/docs/4.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

        <style>
            *
            {
                box-sizing: border-box;
            }
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

        <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");

            Student student = (Student) session.getAttribute("currentUser");
            if (student == null) {
                response.sendRedirect("SignUpIn.jsp");
            } else {

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
                            <a class="nav-link" href="SignUpIn.html" >Marks</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="SignUpIn.html">Fee Status</a>
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
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="container text-center">
            <div>
                <div class="border py-3" style="margin-left: 20%; margin-right: 20%;">
                    <a href="AddPost.jsp" style="text-decoration: none;">
                        <i class="fa fa-edit fa-5x"></i><br>
                        <b>Add your own post</b>
                    </a>
                </div>
            </div>
        </div>
        <br>
        <br>
        <!--start of the page-->

        <div class="container text-center">
            <div class=" align-items-start">
                <div class="row">
                    <div class="col-md-3">
                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <button onclick="getPosts(0)" class="nav-link active my-2" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false" data-bs-toggle="tooltip" data-bs-placement="top" title="Tooltip on top">All Categories</button>

                            <%
                                PostDao dao = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Category> list = dao.getAllCategories();
                                for (Category c : list) {
                            %>
                            <button onclick="getPosts(<%= c.getCid()%>)" class="nav-link my-2" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"><%=c.getName()%></button>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content" id="v-pills-tabContent">

                            <div id="loader">
                                <div class="spinner-grow text-primary" role="status" style="width: 3rem; height: 3rem;">
                                </div>
                            </div> 

                            <div id="post-container">
                                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">Loading...</div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>



    <!--end of the page-->


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


                                function getPosts(catId) {
                                    $("#loader").show();
                                    $("#post-container").hide();
                                    $.ajax({
                                        url: "LoadPosts.jsp",
                                        data: {cid: catId},
                                        success: function (data, textStatus, jqXHR) {
                                            console.log(data);
                                            $("#loader").hide();
                                            $("#post-container").show();
                                            $("#post-container").html(data);
                                        }
                                    })
                                }

                                $(document).ready(function (e) {

                                    getPosts(0)

                                })

    </script>
</body>
</html>
