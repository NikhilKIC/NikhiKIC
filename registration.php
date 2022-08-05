<?php include("conn.php");
session_start();
if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['submit']))
//this is to establish a connection to the database
{
  $name=$_POST['name1'];
  $email=$_POST['email'];
  $password=$_POST['password'];
//this is used to define the variables
//name input is defined as $name
//email input is defined as $email
//password input is defined as $password
  $_SESSION["sname"]=$name;
  $_SESSION["semail"]=$email;
    
    //this is to match the name and email to he database
    
    if($name!="" && $email!="" && $password!="" )
  { 
        $insert="INSERT INTO `student_registration`(`name`,`emailid`,`password`) VALUES('".$name."','".$email."','".$password."')";
      $data=mysqli_query($conn,$insert); 
      if($data)
	  {
	  
	  //If the username, email and password are all valid, their account will be added to the database and it will be added to the system
          header("Location:thnk.php"); 
	  }
        else
        {
            echo "Something Wrong Occurs...! Please Try Again";
        }
        //if there was an error while creating the user account, "Something Wrong Occurs...!! Please Try Again" will be presented and users will have to try again
    }
    else{
        echo "Fields Should Not Be Empty...!";
    }
    //if any of the feilds such as name, email or password is left blank, "Fields Should Not Be Empty...!" will be presented on the screen
}


?>

<!DOCTYPE html>
<html>

<style type="text/css">
body{
  background: url("2.jpg");
}
.box{
  width:74%;
  height:165px;
 border:solid 1px #CF0403;
  background-image: url("lib.jpeg");
  background-size: cover;
  margin-left: 13%;
  opacity: .9;
  border-radius:12px;
}
.title h2{
           background:#660000;
       border:none;
       margin-left:-10px;
      margin-top: -05px;
      padding-top:3px;
      padding-bottom: 2px;
        padding-left:120px;
      border-radius:15px;
      width:77.2%;
      color:white;
           }
.one{
  margin-top: 1.5%;
  margin-left:52%;
  margin-right:2%;
  opacity: .9;
  box-shadow:0px 0px 15px lightgreen;
  height:320px;
  background:rgba(0,0,0,0.5);
}
.boxtwo{
  background-image: url("lg3.jpg");
  background-size: cover;
  box-shadow:0px 0px 15px lightgreen;
  border-radius:12px;
}
.boxtwo input[type="submit"]
       {

     font-size:25px;
     text-align:center;
   border:none;
   height:40px;
   margin-left:60% ;
   margin-top: 10px;
   background:#660000;
   color:#FFFFFF;
   border-radius:18px;
   }

</style>




<head><title>REGISTRATION</title></head>
<body>
  <div class="box">
   <table  style =" font-size:16pt" align="center" width="100%" height="100%">
      <tr>
        <td style="color:white"><h1 align="center"><marquee ><i>Online Ebook System</i>  </marquee></h1></td>
      </tr>
      <tr>
          <td  align="center"><b><i><mark style="color:white;background-color:maroon";>REGISTRATION PAGE</mark></i></b></td>
      </tr>
    </table>
  </div>
  <br><br>
  <div  class="boxtwo" style="border:solid 1px #CF0403;border-radius: 10px; width:73.5%; height:370px; margin-left:13%;margin-top:10px;background-color:white">

<fieldset align="center" style="color:blue;" class="one">
  <div class="title">
  <h2>YOUR DETAILS</h2>
    </div>

<form action="" method="post">
<table align="Right" style="color:white;font-size:13pt">
	  <tr>
			<td>NAME:</td>
 <td ><input type="text" required="required" name="name1" size="17"
 maxlength="30" style="color:blue"/></td>
<tr><td>E-MAIL ID:</td>
 <td><input type="email" name="email" required="required" size="17"
 maxlength="30" style="color:blue"/></td></tr>
<tr>
<td>
PASSWORD:</td>
 <td><input type="text" name="password" required="required" size="17"
 maxlength="30" style="color:blue"/>
</td></tr>

 <tr>
  <td><input type="submit" name="submit"
   value="REGISTER"></td>
</tr>
 </table>
</form>
 </fieldset>
</div>



  <div class="boxthree" style="background-color:orange; border:solid 2px orange;border-radius: 10px; width:73.5%; height:40px; margin-left:13%; margin-top:15px" >
    <marquee behavior="alternate" direction="right" loop="1" style="margin-right:38%" align="center"><h6 style="line-height:1px;">For any query please <a href="aboutus.php">contact us</a>.Thank You.</h6></marquee>


  </div>

 </body>
</html>
