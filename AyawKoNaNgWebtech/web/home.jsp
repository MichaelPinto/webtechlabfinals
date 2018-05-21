<%-- 
    Document   : home
    Created on : May 20, 2018, 12:01:05 AM
    Author     : Baquiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome ${username}</title>
        <link rel="stylesheet" type="text/css" href="styles/lameStyles.css">
    </head>
    <body>
        <div id="lameHeading">

        </div>
        <div id="lameContentNotification" style="overflow:auto;">
            <h1 style="margin-left:10px; margin-top: 10px;">Your Notification ${name}</h1>
            <% 
              
            %>
        </div>

        <div id="lameContentActions">
            <h1 style="margin-top:15px;">Please select a service</h1>
            <a href="upload.jsp" target="_blank"><div>Would you like to add a new beautiful costume?</div></a>
            <a href="edit.jsp"><div>Would you like to modify your costume description?</div></a>
            <a href="show.jsp"><div>Would you like to show all your costume collection?</div></a>
            <a href="delete.jsp"><div>Would you like to disable meanwhile some of your costumes?</div></a>
        </div>
    </body>
</html>
