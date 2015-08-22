<!DOCTYPE HTML>
<html>
<head>
<title>Elite Software Solutions</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<?php

require_once "Mail.php";

$fromE = $_POST['txtEmailId']; // sender
$name= $_POST['txtName'];
$company=$_POST['txtCompany'];
$country=$_POST['ddlCountry'];
$service=$_POST['txtService'];
$phone=$_POST['txtPhone'];
$details = $_POST['txtDetails'];

$from = "S M Ahmed<muzamil@eliteitsoft.com>";
$to = "Info <sales@eliteitsoft.com>";
//$to = "Info <muzamil.soft@gmail.com>";

$subject = "Customer Enquiry";
print( " Customer Name: $name," ); 
print( " Email: $fromE," );
print( " Phone: $phone," );
print( " Company: $company,");
print( " Country: $country,");
print( " Service: $service,");  
print( " Details: $details" ); 

$body = "\n Name: ".$name."\n Email: ".$fromE."\n Phone: ".$phone."\n Company: ".$company."\nCountry: ".$country."\n Service: ".$service."\n Details: ".$details;
if (mail($to, $subject, $body)) {
   echo("<p>The above details have been sent as Email!</p>");
  } else {
   echo("<p>Email delivery failed…</p>");
  }
 
?>
<div><p><a href="enquiry.html">Click to enquiry page</a></p></div>
</body>
</html>
