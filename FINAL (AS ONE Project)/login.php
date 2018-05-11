<?php
include_once "includes/db.php";
?>
<?php 
session_start();
session_destroy();
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>Dress Em 'UP</title>

    <style>
        .container{
            text-align:center;
        }
        div a{
            color: #fff;
            text-decoration: none;
        }
    </style>
  </head>
  <body>
    <div class="container">
        <h1>Login</h1>
        <hr>
        
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="jumbotron">
                    <form method="post" enctype="multipart/form-data" class="form-horizontal"  action="checklogin.php">
                    <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Username</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="Username" name="username" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Password</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" placeholder="Password" name="password" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6"><button class="btn btn-primary col-md-12" type="submit" name="Submit">Login</button></div>
                            <div class="col-md-3"></div>
                        </div>
                    </form> 
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6"><a href="registration.php"><button class="btn btn-primary col-md-12" >Signup</button></a></div>
                        <div class="col-md-3"></div>
                    </div>
                    
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>