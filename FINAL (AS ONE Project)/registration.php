<?php
error_reporting( ~E_NOTICE ); // avoid notice

include_once "includes/db.php";

if(isset($_POST['Submit']))
{

    $first = $_POST['fname'];
    $middle = $_POST['minitial'];
    $last = $_POST['lname'];
    $nick = $_POST['nname'];
    $username = $_POST['uname'];
    $password = $_POST['pass'];
    $hashedPwd = md5($password);
    $email = $_POST['email'];
    $address = $_POST['address'];
    $contact = $_POST['contact'];
    $bday = $_POST['year']."-". $_POST['month']."-".$_POST['day'];
    $gen = $_POST['gender'];
    $type = $_POST['type'];
   

    $stmt = $DB_con->prepare('INSERT INTO users(username, password, usertype, firstname, lastname, gender, birthdate, middle_initial, email, nickname, address, contact_no) 
    VALUES (:username, :password , :usertype, :firstname, :lastname, :gen, :birthdate, :middlename, :email, :nickname, :address, :contact);');
            $stmt->bindParam(':username',$username);
            $stmt->bindParam(':usertype',$type);
            $stmt->bindParam(':firstname',$first);
            $stmt->bindParam(':lastname',$last);
            $stmt->bindParam(':gen',$gen);
            $stmt->bindParam(':birthdate',$bday);
            $stmt->bindParam(':middlename',$middle);
            $stmt->bindParam(':password',$hashedPwd);
            $stmt->bindParam(':email',$email);
            $stmt->bindParam(':nickname',$nick);
            $stmt->bindParam(':address',$address);
            $stmt->bindParam(':contact',$contact);

			
			if($stmt->execute())
			{
				$successMSG = "new record succesfully inserted ...";
				header("refresh:5;login.php"); // redirects image view page after 5 seconds.
			}
			else
			{
				$errMSG = "error while inserting....";
			}

}

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>Index</title>

    <style>
        .container{
            text-align:center;
        }
    </style>
  </head>
  <body>
    <div class="container">
        <h1>Registration</h1>
        <hr>
        <?php
                        if(isset($errMSG)){
                                ?>
                                <div class="alert alert-danger">
                                    <span class="glyphicon glyphicon-info-sign"></span> <strong><?php echo $errMSG; ?></strong>
                                </div>
                                <?php
                        }
                        else if(isset($successMSG)){
                            ?>
                            <div class="alert alert-success">
                                <strong><span class="glyphicon glyphicon-info-sign"></span> <?php echo $successMSG; ?></strong>
                            </div>
                            <?php
                        }
                        ?>  
                </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="jumbotron">
                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Username</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="Username" name="uname" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Password</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="password" placeholder="Password" name="pass" onkeyup='check();' required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Confirm Password</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="confirm_password" placeholder="Confirm Password" name="pass" onkeyup='check();' required>
                                <span id='message'>
                            </div>
                        </div>
                        <script>
                            var check = function() {
                            if (document.getElementById('password').value ==
                            document.getElementById('confirm_password').value) {
                            document.getElementById('message').style.color = 'green';
                            document.getElementById('message').innerHTML = 'matching';
                            } else {
                            document.getElementById('message').style.color = 'red';
                            document.getElementById('message').innerHTML = 'not matching';
                            }
                        }
                        </script>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">First Name</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="First Name" name="fname" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Middle Initial</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control"  placeholder="Middle Initial" name="minitial" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Last Name</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control"  placeholder="Last Name" name="lname" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Nickname</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control"  placeholder="Nickname" name="nname" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Email</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" placeholder="Email" name="email" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Address</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control"  placeholder="Address" name="address" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Contact No.</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" placeholder="Contact No." name="contact" required>
                            </div>
                        </div>
                       <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Birthdate</label>
                            <div class="col-sm-8">
                            <div class="form-group"> 
                        <div class="form-inline">
                            <div class="form-group pull-right " >
                                <select name="year" id="year" class="form-control">
                                    <option value="--" selected>Year</option>                       
                                    <?php
                                        for($i=date('Y'); $i>1899; $i--) {
                                            $birthdayYear = '';
                                            $selected = '';
                                            if ($birthdayYear == $i) $selected = ' selected="selected"';
                                            print('<option value="'.$i.'"'.$selected.'>'.$i.'</option>'."\n");
                                        }
                                    ?>                          
                                </select>     
                            </div>                    
                            <div class="form-group pull-right ">
                                <select name="month" id="month" onchange="" class="form-control" size="1">
                                    <option value="--" selected>Month</option>
                                    <option value="01">Jan</option>
                                    <option value="02">Feb</option>
                                    <option value="03">Mar</option>
                                    <option value="04">Apr</option>
                                    <option value="05">May</option>
                                    <option value="06">Jun</option>
                                    <option value="07">Jul</option>
                                    <option value="08">Aug</option>
                                    <option value="09">Sep</option>
                                    <option value="10">Oct</option>
                                    <option value="11">Nov</option>
                                    <option value="12">Dec</option>
                                </select>            
                            </div>                                             
                            <div class="form-group pull-right ">
                                <select name="day" id="day" onchange="" class="form-control" size="1">
                                <option value="--" selected>Day</option>
                                
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                            </select>
                            </div>                                              
                        </div>
                        </div> 
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Gender</label>
                            <div class="col-sm-8">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio"  name="gender" value="male" >
                                <label class="form-check-label" >Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio"  name="gender" value="female" >
                                <label class="form-check-label" >Female</label>
                            </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Type</label>
                            <div class="col-sm-8">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio"  name="type" value="admin">
                                <label class="form-check-label" >admin</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="type" value="customer">
                                <label class="form-check-label" >customer</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio"  name="type" value="service">
                                <label class="form-check-label" >service</label>
                            </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6"><button class="btn btn-primary col-md-12" type="submit" name="Submit">Register</button></div>
                            <div class="col-md-3"></div>
                        </div>
                    </form> 
                    <div class="form-group row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6"><a href="login.php"><button class="btn btn-primary col-md-12" type="submit" name="Submit">Login</button></a></div>
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