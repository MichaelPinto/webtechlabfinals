
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%--
    Document   : Service
    Created on : Apr 29, 2018, 8:12:54 AM
    Author     : Baquiran
--%>
<%@page import="java.sql.ResultSet"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.html");
    }
%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/interview?user=root&password=");
    Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome ${username}</title>
        <link rel="stylesheet" href="styles/style.css">
    </head>
    <body>
        <div id="header">

        </div>
        <div id="container"> 
            <div id="menuPane">
                <input type="submit" value="Add a costume" name="addCostume" id="addButton"
                       onClick="showAddPane()"/>
                <input type="submit" value="Edit a costume info" name="editCostume" id="editButton"
                       onClick="showEditPane()"/>
                <input type="submit" value="Show my products" name="showCostumes" id="showButton"
                       onClick="showShowPane()"/>
            </div>

            <div id="productPane">
                <div id="addPane">
                    <form action="Quiz" method="POST" enctype="multipart/form-data">
                        Enter costume title:<input type="text" name="costumetitle" value="Add costume title here" /><br>
                        Enter costume detail:<input type="text" name="costumedetails" value="Add details here" /><br>
                        Enter costume description:<textarea name="costumedescription" rows="5" cols="20">
Add brief description here
                        </textarea><br>
                        Enter costume quantity:<input type="text" name="costumeqty" value="Put integer here" /><br>
                        Enter costume tag:<input type="text" name="costumetag" value="i.e. Halloween or Anime" /><br>
                        Costume category:<select name="costumecat" size="1">
                            <option>Bonnet</option>
                            <option>Pants</option>
                            <option>Jacket</option>
                            <option>Socks</option>
                            <option>Wigs</option>
                        </select>
                        <input type="file" name="photo">
                        <input type="submit" value="submit" name="submitbutton" />
                    </form>
                </div>

                <div id="editPane">
                </div>

                <div id="showPane">
                    <div id="showButtonsPane">
                        <input type="submit" value="Show by Date" />
                        <input type="submit" value="Show by date" />
                        <input type="submit" value="Show by category" />
                        <input type="submit" value="Show by tag" />
                        <input type="submit" value="Show by quantity" />
                        <input type="submit" value="Show by Name" />
                        <input type="submit" value="Show all" />
                    </div>

                    <div id="showAllPane">
                        <%
                            String toQuery = "select prod_id,prodname,prodcat from weblabg3.products";
                            ResultSet result = stmt.executeQuery(toQuery);
                            
                            while (result.next()) {
                                
                        %>
                        <div class="resultContainer">
                            <td> <% out.print(Integer.parseInt(result.getString("prod_id")));%> </td>
                            <td> <% out.print(result.getString("prodname")); %></td><br>
                            <td> <% out.print(result.getString("prodcat")); %></td>
                            <img>
                        </div>
                               
                            <%
                                }
                        %>
                    </div>

                    <div id="showByDate">
                    </div>

                    <div id="showByCategory">
                    </div>

                    <div id="showByTag">
                    </div>

                    <div id="showByQuantity">
                    </div>

                    <div id="showByName">
                    </div>

                    <div id="showByPrice">
                    </div>
                </div>
            </div>
        </div>
        <div id="helperPane">
            <%

            %>
            <img src="WEB-INF/">

            <%
            %>

        </div>
        <div id="footPane">
        </div>
    </body>
    <script type="text/javascript" src="scripts/script.js"></script>
</html>
