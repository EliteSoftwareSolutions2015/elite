<!DOCTYPE HTML>
<html>
<head>
<title>Elite Software Solutions</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<?php
require_once "Mail.php";
$fromE = $_POST['emailID']; // sender

$from = "Syed Muzamil<muzamil@eliteitsoft.com>";
//$to = "Sales <sales@eliteitsoft.com>";
$to = "Sales <sales@eliteitsoft.com>";

$subject = "Customer Enquiry";
print( " Email: $fromE," );

$body = "Email: ".$fromE;
if (mail($to, $subject, $body)) {
   echo("<p>The above details have been sent as Email!</p>");
  } else {
   echo("<p>Email delivery failed�</p>");
  }
 
?>
<div><p><a href="index.html">Click to enquiry page</a></p></div>
</body>
</html>
