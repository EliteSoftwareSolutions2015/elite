<!DOCTYPE HTML>
<html>
<head>
<title>Elite Software Solutions</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<?php
require_once "Mail.php";
$name = $_POST['txtFullName'];
$number = $_POST['txtPhoneNo'];
$fromE = $_POST['txtEmail']; // sender

$from = "Syed Muzamil<muzamil@eliteitsoft.com>";
$to = "Sales <sales@eliteitsoft.com>";

$subject = "Customer Enquiry";
print( " Name: $name," );
print( " Number: $number," );
print( " Email: $fromE," );

$body = "Name: ".$name."Number: ".$number."\n Email: ".$fromE;
if (mail($to, $subject, $body)) {
   echo("<p>The above details have been sent as Email!</p>");
  } else {
   echo("<p>Email delivery failed�</p>");
  }
 
?>
<div><p><a href="enquiry.html">Click to enquiry page</a></p></div>
</body>
</html>
