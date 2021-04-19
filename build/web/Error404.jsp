

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error 404!</title>
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@600;900&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/4b9ba14b0f.js" crossorigin="anonymous"></script>

        <style>
            body {
                background-color: #000000;
            }

            .mainbox {
                background-color: #000000;
                margin: auto;
                height: 600px;
                width: 600px;
                position: relative;
            }

            .err {
                color: #ffffff;
                font-family: 'Nunito Sans', sans-serif;
                font-size: 11rem;
                position:absolute;
                left: 20%;
                top: 8%;
            }

            .far {
                position: absolute;
                font-size: 8.5rem;
                left: 42%;
                top: 15%;
                color: #ffffff;
            }

            .err2 {
                color: #ffffff;
                font-family: 'Nunito Sans', sans-serif;
                font-size: 11rem;
                position:absolute;
                left: 68%;
                top: 8%;
            }

            .msg {
                text-align: center;
                font-family: 'Nunito Sans', sans-serif;
                font-size: 1.6rem;
                position:absolute;
                left: 16%;
                top: 45%;
                width: 75%;
                color:#ffffff ;
            }

            a {
                text-decoration: none;
                color: #FFA64D;
            }

            a:hover {
                text-decoration: underline;
            }
            .error{
                    padding-left:255px;
                    font-family: 'Nunito Sans', sans-serif;
                    font-size: 1.6rem;
                    position:above;
                    left: 16%;
                    top: 45%;
                    width: 75%;
                  color:#ffffff ;
                }
        </style>

    </head>

    <body>
        <br><br><br><br>
        <div class="mainbox">
            <div class="error">
                <h1>Error</h1>
            </div>
            <div class="err">4</div>
            <i class="far fa-question-circle fa-spin"></i>
            <div class="err2">4</div>
            <div class="msg">Maybe this page moved? Got deleted? Is hiding out in quarantine? Never existed in the first place?<p>Let's go <a href="HomePage.html">HOME</a> and try from there.</p></div>
        </div>
    </body>
</html>
