<!DOCTYPE HTML>
<html>
<head>
<title>Bombay Chowpaty Kulfi, One of the best kulfi ice cream shop</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<?php

require_once "Mail.php";

$fromE = $_POST['email']; // sender
$name= $_POST['name'];
$phone=$_POST['phone'];
$message = $_POST['message'];

$from = "S M Ahmed<smahmed@bombaychowpatykulfi.com>";
$to = "Info <info@bombaychowpatykulfi.com>";

$subject = "Customer Reviews";
print( " Customer Name: $name," ); 
print( " Email: $fromE," );
print( " Phone: $phone," );  
print( " Message: $message" ); 

$body = "\n Name: ".$name."\n Email: ".$fromE."\n Phone: ".$phone."\n Message: ".$message;
if (mail($to, $subject, $body)) {
   echo("<p>The above details have been sent as Email!</p>");
  } else {
   echo("<p>Email delivery failed…</p>");
  }
 
?>
<div><p><a href="Guest.html">Click to guest page</a></p></div>
</body>
</html>
