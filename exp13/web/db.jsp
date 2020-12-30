<%-- 
    Document   : db
    Created on : Dec 25, 2020, 6:17:37 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/emp","root","");
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            String qry="select * from emp2 where password='"+pass+"' and ename='"+user+"'";
            Statement st=con.createStatement();
             ResultSet rs=st.executeQuery(qry);
             if(rs.next())
             {
                 out.print("Valid");
             }
             else
             {
                 out.print("Invalid");
             }
            }
            catch(Exception e)
            {
                
            }
        %>
    </body>
</html>
