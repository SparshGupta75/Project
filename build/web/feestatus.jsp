<%-- 
    Document   : feestatus
    Created on : 24 May, 2021, 9:28:48 PM
    Author     : DELL
--%>

<%@page import="StudentPackage.Student"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Fee Status</title>
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
        <div class="container text-center">
            <div class="row">
                <div class="col-md-8 offset-2">
                    <h1 class="mb-4">Fee Status</h1>
                </div>
            </div>
        </div>
        <%
            Student student = (Student) session.getAttribute("currentUser");
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement stmt = con.createStatement();
                ResultSet res = null;
                String q = "select * from fees where SID=?";
                PreparedStatement ps = con.prepareStatement(q);
                ps.setString(1, student.getSID());
                res = ps.executeQuery();
                if (res.next()) {%>
<!--        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
    </symbol>
    </svg>-->
    <div class="container w-50">
    <div class="alert alert-success d-flex align-items-center" role="alert">
        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
        <div>
            You've paid your fees for this semester on <%= res.getString(13)%>. Transaction ID for the same is <%= res.getString(14)%> 
        </div>
    </div>
</div>
    <%
    } else { %>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
        <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
    </symbol>
    </svg>
    <div class="container w-50 text-center">
    <div class="alert alert-danger d-flex align-items-center" role="alert">
        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
        <div>
            &nbsp;You haven't paid the fees for this semester. <a href="paytm.jsp" class="alert-link">Click here</a> to go to the fees portal.
        </div>
    </div>  
    </div>

    <%
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    %>



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
</body>
</html>
