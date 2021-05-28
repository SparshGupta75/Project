<%@page import="java.sql.*"%>
<%@page import="StudentPackage.Student"%>
<%@page import="com.paytm.merchant.CheckSumServiceHelper"%>   <!-- Payment gateway API ko use karega  -->
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%

    Student student = (Student) session.getAttribute("currentUser");

%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<html>
    <head>
        <!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
        <title></title>
    </head>
    <body>

        <%!
            public class PaytmConstants {

                public final static String MID = "PiaHuM72301329972632";
                public final static String MERCHANT_KEY = "XK9JyJ_Bj2b1@ogz";
                public final static String INDUSTRY_TYPE_ID = "Retail";
                public final static String CHANNEL_ID = "WEB";
                public final static String WEBSITE = "WEBSTAGING";
                public final static String PAYTM_URL = "https://securegw-stage.paytm.in/order/process";

            }
        %>

        <%            Enumeration<String> paramNames = request.getParameterNames();

            Map<String, String[]> mapData = request.getParameterMap();
            TreeMap<String, String> parameters = new TreeMap<String, String>();
            String paytmChecksum = "";
            while (paramNames.hasMoreElements()) {
                String paramName = (String) paramNames.nextElement();
                if (paramName.equals("CHECKSUMHASH")) {
                    paytmChecksum = mapData.get(paramName)[0];
                } else {
                    parameters.put(paramName, mapData.get(paramName)[0]);
                }
            }
            boolean isValideChecksum = false;
            String outputHTML = "";
            try {
                isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY, parameters, paytmChecksum);
                if (isValideChecksum && parameters.containsKey("RESPCODE")) {
                    if (parameters.get("RESPCODE").equals("01")) {
                        outputHTML = parameters.toString();
                        Enumeration aa = request.getParameterNames();

//                        out.print(outputHTML);
                        String[] arr = new String[13];
                        int i = 0;
                        for (Map.Entry<String, String> entry : parameters.entrySet()) {
                            out.println(
                                    "[" + entry.getKey()
                                    + ", " + entry.getValue() + "]");
                            arr[i] = (String) entry.getValue();
                            i++;
                        }
//                        out.println(student.getSID());
                        for(int j=0;j<13;j++)
                        {
                            out.println(arr[j]);
                        }
                        try {

                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");

                            Statement stmt = con.createStatement();

                            ResultSet res = null;
                            String q = "insert into fees values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                            PreparedStatement ps = con.prepareStatement(q);
                            ps.setString(1, arr[5]);
                            ps.setString(2, arr[0]);
                            ps.setString(3, arr[1]);
                            ps.setString(4, arr[2]);
                            ps.setString(5, arr[3]);
                            ps.setString(6, arr[4]);
                            ps.setString(7, arr[5]);
                            ps.setString(8, arr[6]);
                            ps.setString(9, arr[7]);
                            ps.setString(10, arr[8]);
                            ps.setString(11, arr[9]);
                            ps.setString(12, arr[10]);
                            ps.setString(13, arr[11]);
                            ps.setString(14, arr[12]);
                            int x = ps.executeUpdate();
                            if (x > 0) {
                                out.print("done");
                            }

                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        while (aa.hasMoreElements()) {

                            Object a = aa.nextElement();

                            out.println(a);
        %>
        <h2>
            <!--Your Payment Has been Done Successfully-->
        </h2>

        <%
                        }

                    } else {
                        outputHTML = "<b>Payment Failed.</b>";
                        Enumeration aa = request.getParameterNames();
                        while (aa.hasMoreElements()) {
                            Object a = aa.nextElement();

                            out.println(a);
                        }
                    }
                } else {
                    outputHTML = "<b>Checksum mismatched.</b>";
                }
            } catch (Exception e) {
                outputHTML = e.toString();
            }
        %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <%= outputHTML%>
</body>

</html>