<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Vector"%>
<%
    if (session.getAttribute("uid") != null) {

        String _uid = (String) session.getAttribute("uid");

        PreparedStatement ps = ((Connection) application.getAttribute("CONN")).prepareStatement("select * from login where userid=?");
        ps.setString(1, _uid);

        ResultSet rs = ps.executeQuery();
        rs.next();

        if (rs.getString(3).equals("Admin")) {
            response.sendRedirect("AdminForms.jsp");
        } else {
            response.sendRedirect("Userway.jsp");
        }

    }

%>


<%    Vector vtransport = new Vector();

    session.setAttribute("trans", vtransport);

    Vector vent = new Vector();

    session.setAttribute("entert", vent);

    Vector vstudent = new Vector();

    session.setAttribute("stud", vstudent);

    Vector vhospital = new Vector();

    session.setAttribute("hosp", vhospital);

    Vector voffices = new Vector();

    session.setAttribute("vof", voffices);

    Vector vgen = new Vector();

    session.setAttribute("vgen", vgen);


%>

<%-- 
    Document   : index
    Created on : Apr 20, 2015, 12:36:57 AM
    Author     : Anurag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css" />

        <script type="text/javascript">
            history.pushState(null, null, 'index.jsp');
            window.addEventListener('popstate', function(event)
            {

                history.pushState(null, null, 'index.jsp');
            }

            );



            function check() {
                var email = document.getElementById("email").value;
                var e = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                if (e.test(email) == false)
                {
                    alert("Enter valid email id");
                    return false;
                }
                return true;



            }


        </script>
    </head>
    <body class="backgroundformat">
        <div style="margin:auto;"
        <table cellpadding="10" cellspacing="0" border="" width="100%" align="center" style="margin:auto;">
            <tr><td colspan="2" align="center"><%@include file="banner.jsp"%></td></tr>
            <tr><td colspan="2" align="center"><%@include file="menu.jsp"%></td></tr>
            <tr><td width="60%" align="center"><%@include file="slidingimages.jsp"  %> </td><td width="25%" align="center">
                    <form method="post" action="validateLogin.jsp" onsubmit="return check()">
                        <br>
                        <table cellpadding="10" cellspacing="0" border="0" width="25%">

                            <tr bgcolor="red">    <td colspan="4" align="center"><font color="white"><b>Login Here..</b></font></td>    </tr>
                            <tr>    <td width="25%"></td><td>Enter Id</td><td><input id="email" type="text" name="txt_id" required="required"></td><td width="25%"></td>    </tr>
                            <tr>    <td></td><td>Password</td><td><input type="password" name="txt_pass" required="required"></td><td></td>    </tr>
                            <tr>    <td colspan="4" align="center"><input type="submit" value="Login">/<a href="UserSignup.jsp">User Sign Up!</a></td>    </tr>

                            <tr ><td colspan="4" align="center"><hr></td></tr>

                        </table>
                    </form>



                </td></tr>

        </table>
                   
    </body>
    
</html>
