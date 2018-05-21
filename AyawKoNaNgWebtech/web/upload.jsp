<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
        <title>Costume for fun</title>
        <link rel="stylesheet" type="text/css" href="styles/lameStyles.css">
    </head>
    <body>
        <div id="lameHeading">

        </div>
        <div id="lameUploadPane">
            <h1 style="margin-left: 15px; color:white; padding-top:10px">Fill out the form below</h1>
            <form name="upload" action="Upload" method="POST" enctype="multipart/form-data">
                <h3 style="color:white; margin-left: 15px;">Enter the costume name: </h3>
                <input type="text" name="costumetitle" value="" />

                <h3 style="color:white; margin-left: 15px;">Enter the costume type: </h3>
                <input type="text" name="costumetype" value="" />

                <h3 style="color:white; margin-left: 15px;">Enter the costume category: </h3>
                <input type="text" name="costumecategory" value="" /><br>

                <hr>

                <h3 style="color:white; margin-left: 15px; padding-top: 20px;">Enter a tag: </h3>
                <input type="text" name="costumetags" value="" />
                
                <h3 style="color:white; margin-left: 15px; padding-top: 20px;">Enter a price: </h3>
                <input type="text" name="costumetags" value="" />
                
                <h3 style="color:white; margin-left: 15px; padding-top: 20px;">Enter quantity: </h3>
                <input type="text" name="costumetags" value="" />
                
                <h3 style="color:white; margin-left: 15px; padding-top: 20px;">Select the image: </h3>
                <input type="file" name="files" />
                
                <br>
                <br>
                <input style="margin-left: 10px;" type="submit" value="Add my Beatiful costume" name="files" />
            </form>
        </div>

    </body>
</html>
