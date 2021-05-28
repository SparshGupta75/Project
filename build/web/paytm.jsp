<%@page import="StudentPackage.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

    Student student = (Student) session.getAttribute("currentUser");

%>
<html>
    <head>
        <title>Merchant Check Out Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="GENERATOR" content="Evrsoft First Page">
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

    </head>
    <body>
        <center><h1>Merchant Check Out Page</h1></center>
        <pre>
        </pre>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-4">
                    <form method="post" action="pgRedirect.jsp">
                        <table border="1">
                            <tbody>
                                <tr>
                                    <th>No.</th>
                                    <th>Label</th>
                                    <th>Value</th>
                                </tr>


                                <tr>
                                    <td>1</td>
                                    <td><label>SID::*</label></td>
                                    <td><input id="ORDER_ID" tabindex="1" maxlength="20" 
                                               name="ORDER_ID"
                                               >
                                    </td>
                                </tr>

                                <tr> <td>2</td> 
                                    <td><label>NAME ::*</label></td>
                                    <td><input id="CUST_ID" tabindex="2" maxlength="30"  name="CUST_ID" 
                                               ></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><label>INDUSTRY_TYPE_ID ::*</label></td>
                                    <td><input id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12"  name="INDUSTRY_TYPE_ID"  value="Retail" disabled></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><label>Channel ::*</label></td>
                                    <td><input id="CHANNEL_ID" tabindex="4" maxlength="12"
                                               name="CHANNEL_ID"  value="WEB" disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><label>txnAmount*</label></td>
                                    <td><input title="TXN_AMOUNT" tabindex="10"
                                               type="text" name="TXN_AMOUNT" readonly
                                               value="65000">
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><input value="CheckOut" type="submit" onclick=""></td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                    <h4 class="mt-2">* : field mandatory</h4>
                    
                </div>
            </div>
        </div>

    </body>
</html>