<%-- 
    Document   : Fresh1
    Created on : Jun 17, 2014, 12:20:01 PM
    Author     : Syed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Include the Leap Client library --%>
<%@page import="com.leap.nucaptcha.*" %>
 
<%
// Initialize the NuCaptcha Client Library
NuCaptchaClient ncClient = NuCaptchaClient.init(
// Your ClientKey is supplied by Leap and can be downloaded from the publisher dashboard
// Sign up at http://www.nucaptcha.com/dashboard. It's free!
"YOUR_CLIENT_KEY_HERE",
// If you don't have access to the HttpServletRequest object, you can implement your own 
// ClientEnvironment
request
);
 
// Check for errors
if( null == ncClient )
{
 // Log the error somewhere so we know it happened
   System.err.println(
   "Error initializing NuCaptchaClient.  Client key or ClientEnvironment interface is null."
    );
}

// Set the NuCaptcha client to store the persistent data to form fields for validation later
  ncClient.setPersistToFormField(true);
  
//Step 3:

//Validate the previous transaction, if need be. Do this first, so that we can use the same code/page to validate and initialize a transaction.
//Toggle HTML
  // Check for a null NuCaptcha client if initialization failed
  // Check if the persistent data was stored, and if the user actually submitted an answer
  if( null != ncClient && ncClient.wasSubmitted() )
  {
      // Validate the transaction and check the result
      boolean valid = ncClient.validateTransaction();
  
      // Check for error. By default, validateTransaction will return true on error
      int ec = ncClient.getLastStatusCode();
      if( ec != Constants.LMSC_CORRECT &&
          ec != Constants.LMSC_WRONG &&
          ec != Constants.LMSC_EMPTY )
      {
          // log the error somewhere so we know it happened
          System.err.println(
              "Validation False. Status Code: " + ec +
              " Status Message: " + ncClient.getLastStatusMessage()
         );
      }
  
      if( valid )
      {
          // We have a valid captcha
          transactionStatus = "Answer correct.";
  
          // This is where you'd most likely redirect to the next page, or submit the results
          // of what you were trying to validate (forum post, picture submission, etc)
      }
      else
      {
          transactionStatus = "Answer was incorrect.";
      }
  }
//Step 1:

//Start a new transaction
//Toggle HTML
   if( null != ncClient )
   {
       // Initialize the transaction using the default parameters
       Transaction t = ncClient.initializeTransaction(new TransactionParameters());
   
       // Get the form HTML for the widget
       widgetHtml = t.getWidget().render();
   
       // Check if the transaction initialization was successful
       if( ncClient.getLastStatusCode() != Constants.LMSC_OK )
       {
           // Log the status somewhere so we know it happened
           System.err.println(
               String.format("Transaction Status Code: %1$d Message: %2$s",
                ncClient.getLastStatusCode(), ncClient.getLastStatusMessage())
     );
  }
 }
%>
<html>
 <head>
 <title>Java Complete Example</title>
 </head>
 <body>
  
       <!-- Form must use post method -->
       <form method="post">
   
         <%= widgetHtml %><br>
  
          <!-- must supply your own submit button -->
          <input type="submit" value="Test Your Answer!" />
      </form>
   
   <!-- Tell the user what happened last time through -->
   Transaction Status: <%= transactionStatus %>
   
 </body>
 </html>
