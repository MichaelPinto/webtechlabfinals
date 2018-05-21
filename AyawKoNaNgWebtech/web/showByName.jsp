<%-- 
    Document   : showByName
    Created on : May 20, 2018, 4:07:12 PM
    Author     : Baquiran
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/costumesv2?user=root&password=");
            response.setContentType("text/html;charset=UTF-8");
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Costume for fun</title>
        <link rel="stylesheet" type="text/css" href="styles/lameStyles.css">
    </head>
    <body>
        <div id="lameHeading">

        </div>
        <div style="overflow: auto;">
            <%
                String toQueryByName = "select * from costumesv2.products order by product_name";

                ResultSet resultname = stmt.executeQuery(toQueryByName);

                while (resultname.next()) {

            %>
            <div id="lameResultPane">
                <h1 style="color:black">(Name)<%out.print(resultname.getString("product_name"));%></h1>
                <h1 style="color:black">(Name)<%out.print(resultname.getString("product_name"));%></h1>
            </div>   

            <%            }
            %>
        </div>
    </body>
</html>
