<%@page import="com.sun.mail.iap.Protocol"%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="author" content="Elite">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<link rel="canonical" href="http://www.eliteitsoft.com/">
<title>Elite Software Solutions</title>
<meta name="Keywords" content="Software Development,UI Development, GUI development, Web development, Website development, Web portal development, JSP Project development, Swing Project development, Desktop Software Development, SWT Software Development, JAVA Programming, JAVA Software Development, Core Java Programming, Java Tutorials, Java Training, Website development training, Graphics Designing, LOGO Designing, Web hosting, Domain Registration, ERP Solutions, Project Management, Project Design, Software Development Life Cycle">
<meta name="description" content="Elite Software Solutions is a company involved in application side software development. Elite masters in designing and implementation of customized LAN and Internet applications.">
<link href="images/Elite_icon.png" rel="SHORTCUT ICON">
<link href="images/css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="images/new-style.css">
<link type="text/css" rel="stylesheet" href="images/my-slider.css">
<link href="images/new-theme.css" type="text/css" rel="stylesheet">
<link href="images/SubPages/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="images/SubPages/home.css">
<link rel="stylesheet" type="text/css" href="images/SubPages/nivo-slider.css">
<link rel="stylesheet" type="text/css" href="images/SubPages/test-style.css">
<link rel="stylesheet" type="text/css" href="images/SubPages/client.css">
<link rel="stylesheet" type="text/css" href="images/SubPages/colorbox.css">
<script type="text/javascript" src="images/SubPages/custom_by_jax.js"></script>  
<script type="text/javascript" src="images/SubPages/tabs.js"></script>
<script type="text/javascript" src="images/SubPages/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="images/SubPages/jquery.js"></script>
<script type="text/javascript" src="images/jquery.js"></script>
<script type="text/javascript" src="images/jquery-lib-min.js"></script>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="sun.net.smtp.SmtpClient" %>
<%@ page import="java.io.*" %>

</head>
<body>
<header>
  <div class="topheader">
    <div class="header clearfix container">
      <div class="logo fl" itemscope="" itemtype="http://schema.org/Organization">
	  		<a itemprop="url" href="http://www.eliteitsoft.com/">
				<img itemprop="logo" title="Elite Software Solutions" alt="Elite Software Solutions" src="images/EliteLogoNGreen1.png" >
			</a>
	  </div>
      <div class="fr">
        <div id="topband">
          <div class="top-sec clearfix">
            <ul class="fr">
              <li class="nav-fb"><a href="#" target="_blank">Facebook</a></li>
              <li class="nav-tw"><a href="#" target="_blank">Twitter</a></li>
              <li class="nav-ld"><a href="#" target="_blank">Linkedin</a></li>
              <li class="nav-gp"><a href="#" target="_blank">google Plus</a></li>
              <li class="dropdown"><span><strong>Mob:</strong>+91 963 203 3396<span class="drop-icon">&nbsp;</span></span></li>
              <li class="dropdown"><span>IT Support <span class="drop-icon">&nbsp;</span></span>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-head"><a href="ContactUs.html" title="Support">Support</a></div>
                  <ul>
                        <li><a href="News.html" title="News">News</a></li>
                        <li><a href="Customers.html" title="Customers">Customers</a></li>
                        <li><a href="Feedback.jsp" title="Feedback">Feedback</a></li>
                        <li><a href="ContactUs.html" title="Contact Us">Contact Us</a></li>
                  </ul>
                </div>
              </li>
              <li class="search"><span><span class="search-icon">&nbsp;</span></span>
                <div class="dropdown-menu">
                </div>
              </li>
			  
            </ul>
         </div>
	  </div>
        <nav>
          <div class="fr">
            <div class="menu-icon"><span class="menu-txt">Menu</span><span class="menu-btn">&nbsp;</span></div>
            <ul class="nav clearfix">
              <li><a href="http://www.eliteitsoft.com" title="Home">Home</a></li>
              <li class="miconShow" id="prdTab"><a href="" title="Services">Services</a></li>
              <li class="dropdown maindropdown miconHide"><span>Services <span class="drop-icon dwn-arw"></span></span>
                <div class="dropdown-menu maindrop-menu" >
                  <div class="prdCont clearfix">
                    <div>
                      <div class="dropdown-menu-head">Business Management</div>
                      <ul>
                        <li><a title="Business Applications" href="BusinessApplications.html">Business Applications</a></li>
                        <li><a title="Strategic Management" href="StrategicManagement.html">Strategic Management</a></li>
                        <li><a title="Infrastructure Management" href="InfrastructureManagement.html">Infrastructure Management</a></li>
                        <li><a title="IT Service Management" href="ITServiceManagement.html">IT Service Management</a></li>
                        <li><a title="Consulting Services" href="ConsultingServices.html">Consulting Services</a></li>
                        <li><a title="Sustainability" href="Sustainability.html">Sustainability</a></li>
                        <li><a title="Business Integration & Data Warehousing" href="BusSInteg&Datawarehousing.html">Business Integration & Data Warehousing</a></li>
                        <li><a title="Enterprise Data Management" href="EnterpriseDataManagement.html">Enterprise Data Management</a></li>
                        <li><a title="Information Management" href="InformationManagement.html">Information Management</a></li>
                      </ul>
                    </div>
                    <div>
                      <div class="dropdown-menu-head">Technology Services</div>
                      <ul>
                        <li><a title="Enterprise Resource Planning" href="ERP.html">Enterprise Resource Planning</a></li>
                        <li><a title="Systems Integration" href="SystemsIntegration.html">Systems Integration</a></li>
                        <li><a title="Engineering Services" href="EngineeringServices.html" target="_blank">Engineering Services</a></li>
                        <li><a title="IT Services Management" href="ITServiceManagement.html">IT Service Management</a></li>
                        <li><a title="Customer Solutions" href="CustomerSolutions.html">Customer Solutions</a></li>
                        <li><a title="Cloud Services" href="CloudServices.html">Cloud Services</a></li>
                        <li><a title="Enterprise Mobility" href="EnterpriseMobility.html">Enterprise Mobility</a></li>
                      </ul>
                    </div>
                    <div>
                      <div class="dropdown-menu-head">Custom Development</div>
                      <ul>
                        <li><a title="Software Analysis & design" href="SoftwareAnalysis&Design.html">Software Analysis & design</a></li>
                        <li><a title="Client Server Applications" href="ClientServer.html">Client Server Applications</a></li>
                        <li><a title="Business Applications & Solutions" href="BussAppl&Solutions.html">Business Applications & Solutions</a></li>
                        <li><a title="Complex GUI Applications" href="ComplexGUIApplications.html">Complex GUI Applications</a></li>
                        <li><a title="Database Design & Maintenance" href="DatabaseDesign&Maintenance.html">Database Design & Maintenance</a></li>
                        <li><a title="Business Intelligence" href="BusinessIntelegence.html">Business Intelligence</a></li>
                      </ul>
                    </div>
                    <div>
                      <div class="dropdown-menu-head">Web & Media Development</div>
                      <ul>
                        <li><a title="Web Application Development" href="WebApplicationsDevelopment.html">Web Applications Development</a></li>
                        <li><a title="Web Designing" href="WebDesigning.html">Web Designing</a></li>
                        <li><a title="Domain Registration & Web Hosting" href="DomainRegistration&WebHosting.html">Domain Registration & Web hosting </a></li>
                        <li><a title="E-Commerce" href="ECommerce.html">E-Commerce</a></li>
                        <li><a title="Print Media Adevertising" href="Online&PrintmediaAdvertising.html">Online & Print Media Advertising</a></li>
                        <li><a title="Internet Marketing" href="InternetMarketting&promotions.html">Internet Marketing & Promotions</a></li>
                      </ul>
                    </div>
                </div>
                </div>
              </li>
              <li class="dropdown maindropdown miconHide"><span>Industries <span class="drop-icon dwn-arw"></span></span>
                <div class="dropdown-menu maindrop-menu">
                  <div class="solCont clearfix">
                    <div>
                      <div class="dropdown-menu-head">Education</div>
                      <p><a title="Educational Institution" href="Education.html">Complete Package for management of educational institution</a></p>
                      <div class="dropdown-menu-head">Retail</div>
                      <p><a title="Inventory Management" href="Inventory.html">Inventory for any kind retail industry, Customized Solution</a></p>
                      <div class="dropdown-menu-head">Real Estate</div>
                      <p><a title="Real Estate" href="RealEstate.html">A Online web application to manage enquiries from property vendors, Search</a></p>
                      <div class="dropdown-menu-head">Hospital</div>
                      <p><a title="Hospital Management" href="Hospital.html">Complete Hospital management solutions for Windows environments</a></p>
                      <div class="dropdown-menu-head">Pharmacy</div>
                      <p><a title="Pharmacy" href="Pharmacy.html">Customized Client server solution for Windows and linux desktops</a></p>
                    </div>
                    <div>
                      <div class="dropdown-menu-head">Mechanical Re-engineer</div>
                      <p><a title="IT Mechanical" href="MechanicalReengineering.html">An Online web solution for presentation of thier Job and Products</a></p>
                      <div class="dropdown-menu-head">Mobile</div>
                      <p><a title="Mobile" href="EnterpriseMobility.html">A one-stop solution for mobile device management</a></p>
                      <div class="dropdown-menu-head">On-Demand</div>
                      <p><a title="On-Demand" href="WebDevelopment.html">Online web applications for businesses to manage their IT infrastructures</a></p>
                    </div>
                  </div>
                </div>
              </li>
              <li class="miconShow"><a href="School_Product.html" target="_blank" title="Products">Products</a></li>
              <li id="companyTab" class="dropdown maindropdown miconHide"><span>Products<span class="drop-icon dwn-arw"></span></span>
                <div class="dropdown-menu">
                  <ul>
                    <li><a href="School_Product.html" title="School">School Management Software</a></li>
                    <li><a href="Inventory_Product.html" title="Inventory">Inventory Management Software</a></li>
                  </ul>
                </div>
              </li>

              <li class="miconShow"><a href="AboutusMission.html" title="Company">Company</a></li>
              <li id="companyTab" class="dropdown maindropdown miconHide"><span>Company <span class="drop-icon dwn-arw"></span></span>
                <div class="dropdown-menu">
                  <ul>
                    <li><a href="AboutusMission.html" title="About Us">Vision & Mission</a></li>
                    <li><a href="AboutusStructured.html" title="Structured Approach">Structured Approach</a></li>
                    <li><a href="AboutusWorkEthic.html" title="Work ethic">Work Ethic</a></li>
                    <li><a href="images/ProfileA4 (1).pdf" title="Profile" target="_blank">Company Profile</a></li>
                    <li><a href="Customers.html" title="Customers">Customers</a></li>
                    <li><a href="ContactUs.html" title="Contact Us">Contact Us</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </div>
  </div>
<script type="text/javascript" src="images/jquery-lib-min.js"></script>
</header>

<section class="home-banner pr clearfix">
  <div style="height: 375px;" id="MySlider">
    <div class="slider_container">
      <div style="display:inline ; z-index: 1; opacity: 1; height:390px; margin-top:0px; " class="slide fst-slide"> <img src="images/ContactUs2.jpg" alt="Information Technology - Elite"/>
        <div class="slide_content">
          <div class="slide_content_wrap">
            <h2 style="opacity: 1; margin-top: 0px;" class="description1"></h2>
            <h2 style="opacity: 1; margin-top: 0px;" class="description1"></h2>
            <h2 style="opacity: 1; margin-top: 0px;" class="description1"></h2>
            <h2 style="opacity: 1; margin-top: 0px;" class="description1"></h2>
            <h2 style="opacity: 1; margin-top: 0px;" class="description1"></h2>
            <h2 style="opacity: 1; margin-top: 0px;" class="description1"></h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="lighter">
<div id="wrapper">
<div class="content_part"> 
    <div class="right_part">
        <div class="box1">
            <div class="box1_top">
                    <div class="box_orr_left"></div>
                    <div class="box_orr_heading">Services</div>
                    <div class="box_orr_right"></div>
            </div>
            <div class="dd">
            <ul id="accordion">
                    <li class="sub topline"><a href="BusinessApplications.html" class="subarr ">Business Management</a>
                              <ul style="display: none;">
                                    <li class="topline"><a title="Business Applications" href="BusinessApplications.html" >Business Applications</a></li>
                                    <li><a title="Strategic Management" href="StrategicManagement.html">Strategic Management</a></li>
                                    <li class="sub"><a title="Infrastructure Management" href="InfrastructureManagement.html" class="subarr">Infrastructure Management</a>
                                            <ul style="display:none;">
                                                    <li class="topline"><a href="DisasterRecovery.html" >Disaster Recovery / Business Continuity </a> </li>
                                                    <li><a href="ApplicationDelivery.html" >Application Delivery Solutions </a> </li>
                                                    <li><a href="Server&StorageCon.html">Server And Storage Consolidation </a></li>
                                                    <li><a href="IndusStanSoft.html">Industry Standard Softwares </a></li>
                                                    <li><a href="PowerSolns.html">Power Solution </a></li>
                                                    <li><a href="Connectivity.html">Connectivity </a></li>
                                            </ul>
									
                                    </li>
                                    <li><a title="IT Service Management" href="ITServiceManagement.html">IT Service Management</a></li>
                                    <li><a title="Consulting Services" href="ConsultingServices.html">Consulting Services</a></li>
                                    <li><a title="Sustainability" href="Sustainability.html">Sustainability</a></li>
                                    <li><a title="Business Integration & Data Warehousing" href="BusSInteg&Datawarehousing.html" class="subarr subactive selected">Business Integration & Data Warehousing</a></li>
                                    <li><a title="Enterprise Data Management" href="EnterpriseDataManagement.html">Enterprise Data Management</a></li>
                                    <li><a title="Information Management" href="InformationManagement.html">Information Management</a></li>
                              </ul>
                    </li>
                    <li class="sub"><a class="subarr " href="ERP.html">Technology Services</a>
                              <ul style="display: none;">
                                    <li class="topline"><a title="Enterprise Resource Planning" href="ERP.html">Enterprise Resource Planning</a></li>
                                    <li><a title="Systems Integration" href="SystemsIntegration.html">Systems Integration</a></li>
                                    <li><a title="Engineering Services" href="EngineeringServices.html" target="_blank">Engineering Services</a></li>
                                    <li><a title="IT Services Management" href="ITServiceManagement.html">IT Service Management</a></li>
                                    <li><a title="Customer Solutions" href="CustomerSolutions.html">Customer Solutions</a></li>
                                    <li><a title="Cloud Services" href="CloudServices.html" >Cloud Services</a></li>
                                    <li><a title="Enterprise Mobility" href="EnterpriseMobility.html">Enterprise Mobility</a></li>
                              </ul>
                    </li>
                    <li class="sub"><a href="WebDevelopment.html" class="subarr">Software Development</a>
                      <ul style="display: none;">
                            <li class="sub topline"><a href="WebDevelopment.html" class="subarr">Web Development</a>
                              <ul style="display: none;">
                                    <li class="topline"><a href="WebDesigning.html">Web Designing</a></li>
                                    <li><a href="WebApplicationsDevelopment.html">Web Application Development</a></li>
                                    <li><a href="ECommerce.html">E-Commerce Solutions</a></li>
                                    <li><a href="DomainRegistration&WebHosting.html">Web Hosting & Domain Registration</a></li>
                              </ul>
                            </li>
                            <li class="sub"><a href="SoftwareAnalysis&Design.html">Custom Development</a>
                              <ul style="display: none;">
                                    <li class="topline"><a href="SoftwareAnalysis&Design.html">Software Analysis & Design</a></li>
                                    <li><a title="Client Server Applications" href="ClientServer.html" >Client Server Applications</a></li>
                                    <li><a title="Business Applications & Solutions" href="BussAppl&Solutions.html" >Business Applications & Solutions</a></li>
                                    <li><a title="Complex GUI Applications" href="ComplexGUIApplications.html">Complex GUI Applications</a></li>
                                    <li><a title="Database Design & Maintenance" href="DatabaseDesign&Maintenance.html">Database Design & Maintenance</a></li>
                                    <li><a title="Business Intelligence" href="BusinessIntelegence.html" >Business Intelligence</a></li>
                              </ul>
                            </li>
                            <li class="sub"><a href="BroucherDesign.html" class="subarr">Creative Design Services</a>
                              <ul style="display: none;">
                                    <li class="topline"><a href="BroucherDesign.html">Broucher Design</a></li>
                                    <li><a href="MultimediaSoln.html">Multimedia Solutions</a></li>
                                    <li><a href="BannerDesign.html" class="subarr">Banner Design</a></li>
                              </ul>
                            </li> 
                            <li class="sub"><a href="InternetMarketting&promotions.html" class="subarr ">Internet Marketing</a>
                              <ul style="display: none;">
                                    <li class="topline"><a href="SearchEngineOptimization.html">Search Engine Optimization</a></li>
                                    <li><a href="SocialMarketing.html">Social Media Marketing</a></li>
                                    <li><a href="PPCManagement.html">PPC Management</a></li>
                              </ul>
                            </li>
                      </ul>
                    </li>
                    <li class="sub"><a class="subarr lastactive selected" href="enquiry.html">IT Support</a>
                      <ul style="display: block;">
                                    <li class="topline"><a href="News.html" class="">News</a></li>
                                    <li><a href="Customers.html" class="">Customers</a></li>
                                    <li><a href="ContactUs.html" class="subarr subactive selected">Contact</a></li>
                                    <li><a href="enquiry.html" class="">Send enquiry</a></li>        
                      </ul>
                    </li>
            </ul>
            <div class="dd_bottom"></div>
            </div>
        </div>
        <div class="box1">
          <div class="box1_top">
            <div class="box_orr_left"></div>
            <div class="box_orr_heading">Client Appreciations</div>
            <div class="box_orr_right"></div>
          </div>
                <div class="box_middle" style="height: 120px; overflow: hidden; margin-bottom: 0px;">
            <div id="awards" style="width: 120px; height: 120px; padding: 0px 0px 0px 57px; position: relative; margin-left: 57px;">
                         <a href="Customers.html" style="position: absolute; top: 0px; left: 0px; display: block; z-index: 4; opacity: 0.12888100000000002; width: 120px; height: 120px;">
                                 <img src="images/SubPages/0.jpg" width="120" height="120" alt="" style="height: 120px;">
                         </a>
                         <a href="Customers.html" style="position: absolute; top: 0px; left: 0px; display: block; z-index: 5; opacity: 0.871119; width: 120px; height: 120px;">
                                <img src="images/SubPages/1.jpg" width="120" height="120" alt="" style="height: 120px;">
                         </a>
                         <a href="Customers.html" style="position: absolute; top: 0px; left: 0px; display: none; z-index: 4; opacity: 0; width: 120px; height: 120px;">
                                <img src="images/SubPages/2.jpg" width="120" height="120" alt="" style="height: 120px;">
                         </a>
                         <a href="Customers.html" style="position: absolute; top: 0px; left: 0px; display: none; z-index: 4; opacity: 0; width: 120px; height: 120px;">
                                <img src="images/SubPages/3.jpg" width="120" height="120" alt="" style="height: 120px;">
                         </a>
                </div>
          </div>
          <div class="box_awards_bottom"></div>
        </div>
	<script type="text/javascript" src="images/SubPages/image_cycle.js"></script> 
        <script type="text/javascript">
        $(document).ready(function(){
        $('#awards').cycle({ 
            fx:'fade',
            timeout: 3000
         });
         $('#awards').css("margin-left","57px").css("height","120px");
        $('#awards img').css("height","120px");	
          $('#awards').parent().css("margin-bottom","0px");
        });
        </script> 
    </div>
        <div class="in_part">
                <div class="box_in">
                        <div class="box_top_in">
                                <div class="box_left_cor"></div>
                                        <div class="box_heading1">Enquiry Submit</div>
                                <div class="box_right_cor"></div>
                        </div>
                <div class="box_in_bg">
<%

//        try{
/*
                        String host = "smtpauth.net4india.com";
                        String to = "sales@eliteitsoft.com";
                        String from = "muzamil@eliteitsoft.com";
                        final int port = 25;
                        boolean auth = true;
                        final String username = "muzamil@eliteitsoft.com";
                        final String password = "eliteitsoft";
                        String paa;
//                        Protocol protocol = Protocol.SMTPS;
                        
                        boolean debug = true;                        
        //              String from = request.getParameter("Email");
                        String EmailId = request.getParameter("email");

                        String messagetext = null;

                        messagetext = messagetext + "EmailID:" + EmailId;
                        boolean sessionDebug = false;
        //              Create some properties and get the default Session.
                        out.println("password");
                        Properties props = System.getProperties();
                        props.setProperty("mail.smtp.host", host);
                        props.setProperty("mail.smtp.port", "25");
                        out.println("password");

                        Authenticator authenticator = null;
                        try{
                        if (auth) {
                            props.put("mail.smtp.auth", true);
                            out.println("password");
                            authenticator = new Authenticator() {
                                private PasswordAuthentication pa = new PasswordAuthentication(username, password);
                                @Override
                                public PasswordAuthentication getPasswordAuthentication() {
                                    return pa;
                                }
                        };
                        }
                        props.put("mail.smtp.ssl.enable", true);
                        props.put("mail.smtp.starttls.enable", true);
                        props.put("mail.transport.protocol", "smtp8");
                        
			Session mailSession = Session.getInstance(props, authenticator);
			mailSession.setDebug(debug);
                        // Set debug on the Session
                        // Passing false will not echo debug info, and passing True will.

//                        mailSession.setDebug(sessionDebug);

                        // Instantiate a new MimeMessage and fill it with the 
                        // required information.

                        Message msg = new MimeMessage(mailSession);
                        msg.setFrom(new InternetAddress(from));
                        InternetAddress[] address = {new InternetAddress(to)};
                        msg.setRecipients(Message.RecipientType.TO, address);
                        msg.setSubject("Enquiry");
                        msg.setSentDate(new Date());
                        msg.setText(messagetext);
                        Transport.send(msg);
                        
                        }catch (Exception e){
                                out.println(e.getCause());
                                out.println(e.getMessage());
                                out.println(e.getStackTrace());
                        }

                        // Hand the message to the default transport service
                        // for delivery.
/*                            String protocol = "smtp";
                            props.put("mail." + protocol + ".auth", "true");
                            Transport t = mailSession.getTransport(protocol);
                            try {
                                t.connect("118.67.248.245",25,"llhllhg4991LL4435", "llhg4991LL");
                                t.sendMessage(msg, msg.getAllRecipients());
                            } finally {
                                t.close();
                            }

                        out.println("Mail was sent to " + to);
                        out.println(" from " + from);
                        out.println(" using host " + host + ".");

*/
                         String EmailId = request.getParameter("email");
                         String from="muzamil@eliteitsoft.com";
                         String to="sales@eliteitsoft.com";
                         try{
                                 SmtpClient client = new SmtpClient("smtp.net4india.com");
                                 client.from(from);
                                 client.to(to);
                                    
                                 PrintStream message = client.startMessage();
                                 
                                 message.println("To: " + to);
                                 message.println("From: " + from);
                                 message.println("Subject:  Sending email from Elite home Page!");
                                 message.println("This was sent from a home Page!");
                                 message.println();
                                 message.println("EmailID:" + EmailId);
                                 message.println();
                                 message.println();

                                 message.flush();
                                 message.close();   
                                 client.closeServer();	
                                out.println("Mail was sent to " + to);
                                out.println(" from " + from);
                                out.println(" using host " + "smtp.net4india.com" + ".");
					
				}catch(Exception e){
					out.println(e.getCause());
					out.println(e.getMessage());
					out.println(e.getStackTrace());
				}
  
%>        

						<br>
						
						<div style="padding-top: 10px; clear: both; vertical-align: bottom;"><a href="mailto:sales@eliteitsoft.com"><img src="images/SubPages/banner_contact.jpg" width="461" height="102" alt=""></a>
				</div>
				</div>
				<div class="box_bot_in"></div>
                </div>
        </div>
        <div class="right_part">
            <div class="box1">
            <div class="box1_top">
                <div class="box_orr_left"></div>
                <div class="box_orr_heading">Quick Contact</div>
                <div class="box_orr_right"></div>
            </div>
            <div class="box_orr_bottom2">
            <form method="post" action="validateF.jsp"  name="QuickEnquiry" >
                     <input id="txtFullName" name="txtFullName" type="text" onfocus="if(this.value==&#39;Full Name&#39;) this.value=&#39;&#39;;" onblur="if(this.value==&#39;&#39;) this.value=&#39;Full Name&#39;" value="Full Name" class="input_bg">
                     <input id="txtPhoneNo" name="txtPhoneNo" type="text" onfocus="if(this.value==&#39;Phone Number&#39;) this.value=&#39;&#39;;" onblur="if(this.value==&#39;&#39;) this.value=&#39;Phone Number&#39;" value="Phone Number" class="input_bg">
                     <input type="text" id="txtEmail" name="txtEmail" onfocus="if(this.value==&#39;Email&#39;) this.value=&#39;&#39;;" onblur="if(this.value==&#39;&#39;) this.value=&#39;Email&#39;" value="Email" class="input_bg">
                    <div id="submitContactUsDiv" style="left: 0px; top: 0px; height: 100%; width: 100%; background: black; position: fixed; z-index: 1001;display:none;"></div>
                    <table id="submitContactUsTable" style="left: 0px; top: 0px; height: 100%; width: 100%; position: fixed; z-index: 1001;display:none;">
                    <tbody><tr>
                            <td align="center" valign="middle">
                            <center>
                            <div style="background: white; height: auto; width: 200px; border: solid 1px Black; padding-top: 0px; z-index: 1001;">
                            <table width="100%" cellpadding="5" cellspacing="5">
                                    <tbody><tr>
                                            <td align="center" valign="middle">
                                            <div id="result" style=""> <b>Write the following word:</b>
                                            <p style="padding-left: 0px; text-align: center;"><span style="color: red">&nbsp;</span>
                                                <img id="captcha" alt="Captcha" src="Cap_Img.jsp" style="vertical-align: middle; border: solid 1px gray; width: 80px;"/></br><br>
                                                <input class="Buttonrefresh" type="button" value="Refresh Image" onClick="window.location.href=window.location.href"/>                                            <input type="text" name="captcha" id="captcha-form"><br>
                                            <center>
                                            <div style="margin-top: 10px;" class="submit"><input type="submit" id="submit" name="submit" value=""></div>
                                            <div style="margin-top: 10px;" class="close"><input type="button" id="close" name="close" value="" onclick="closedlg();"></div>
                                            <div class="closeButton" style="display: block; margin-top: 5px;"><a href="#"></a></div>
                                            </center>
                                            <br>
                                            </div>
                                            </td>
                                    </tr>
                            </tbody></table>
                            </div>
                            </center>
                            </td>
                            </tr>
                    </tbody></table>
                    <script type="application/javascript">
                     try{
                             document.getElementById('captcha').src=Cap_Img.jsp;
                     }
                     catch(e){}
                    </script>
                    <div style="display:block;float:none;">
                    <p class="submit"><a href="javascript:void(0);" onclick="openSubmitDlg();document.getElementById(captcha).src=Cap_Img.jsp"></a></p>
                    <p class="inquiry"><a href="#"></a></p>
                    <p>&nbsp;</p></div>
            </form>
            </div>
            </div>
            <div style="clear: both;"></div>
            <div class="box1">
                <div class="box1_top">
                    <div class="box_orr_left"></div>
                    <div class="box_orr_heading">Recent Projects</div>
                    <div class="box_orr_right"></div>
                </div>
                <div class="box_middle" style="width: 200px; height: 150px; overflow: hidden; margin-left: 10px; margin-top: 10px;">
                    <div id="innoprojs" style="margin-left: 20px;"><a href="http://www.jameululoom.org" title="School Management Software"> <img src="images/SubPages/JamiaProject.png" width="154" height="74" border="0" style="float:left;" alt="flood it"></a>
                        <div style="clear:both;"></div><br>
                        <div id="innotitles" style="position: relative; width: 185px; height: 82px;">
                            <ul class="box" style="position: absolute; top: 0px; left: 0px; display: block; z-index: 2; opacity: 0.13032100000000002; width: 185px; height: 47px;">
                                    <li>Complete Education Web Portal</li>
                                    <li>Value That Customers Require</li>
                            </ul>
                            <ul class="box" style="position: absolute; top: 0px; left: 0px; display: block; z-index: 3; opacity: 0.869679; width: 185px; height: 82px;">
                                    <li>Live Update for Results </li>
                                    <li>Ultimate Design & Presentation</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="box_orr_bottom"></div>
            </div>
                <script type="text/javascript">
                $(document).ready(function(){
                $('#innotitles').cycle({ 
                    fx:     'fade', 
                    timeout: 5000
                 });	
                });
                </script>
                <div class="box1">
                      <div class="box1_top">
                            <div class="box_orr_left"></div>
                            <div class="box_orr_heading">See Also</div>
                            <div class="box_orr_right"></div>
                      </div>
                      <div id="seealso" class="box_orr_bottom2">
                            <ul>
                              <li>
                                   <a href="images/ProfileA4 (1).pdf" target="_blank" title="Company Profile">Company Profile</a>
                              </li>
                              <li>
                                   <a href="ERP.html" title="Technology Services">Technology Services</a>
                              </li>
                              <li>
                                   <a href="WebDevelopment.html" title="Web Services">Web Services</a>
                              </li>
                              <li>
                                   <a href="SoftwareAnalysis&Design.html" title="Custom Development">Custom Development</a>
                              </li>
                              <li>
                                   <a href="InternetMarketting&promotions.html" title="Internet Marketing">Internet Marketing</a>
                              </li>
                              <li>
                                   <a href="Retail.html" title="Retail Industry">Retail Industry</a>
                              </li>
                            </ul>
                      </div>
                </div>
        </div>
</div></div>
</section>    
  <section class=lighter style="height:600px;">
  <div class="container sheet-block">
    <div class="main-sheet">
      <h1></h1>
    </div>
  </div>
  </section>
<br><br>
<footer>
  <div class="sec-pTB bg-l-grey" id="btmscroll">
    <div class="footer container clearfix">
      <div class="col1">
        <div class="foot-head">About Us</div>
        <div>
          <p class="no-mrg">Elite Software Solutions is a company involved in application side software development. Elite masters in designing and implementation of customized LAN and Internet applications.  Elite specializes in building Windows-based systems that access data in all popular SQL databases including MS SQL Server, Oracle, and MS Access. </p>
          <p class="txt-right link-more"><a href="AboutusMission.html" target="_blank">More »</a></p>
        </div>
      </div>
      <div class="col2">
        <div class="foot-head">Company</div>
        <div class="foot-sec clearfix">
          <ul>
            <li><a href="News.html" title="News">News</a></li>
            <li><a href="AboutusMission.html" title="Vision & Mission">Vision & Mission</a></li>
            <li><a href="Customers.html" title="Customers">Customers</a></li>
            <li><a target="_blank" href="AboutusStructured.html" title="Structured Approach">Structured Approach</a></li>
            <li><a target="_blank" href="AboutusWorkEthic.html" title="Work Ethic">Work Ethic</a></li>
            <li><a href="ContactUs.html" title="Contact Us">Contact Us</a></li>
            <li><a id="feedback" href="Feedback.jsp" title="Feedback" target="_blank">Feedback</a></li>
          </ul>
        </div>
      </div>
      <div class="col3 mbH">
        <div class="foot-head">Services</div>
        <div class="foot-sec clearfix">
          <ul>
            <li><a href="BusinessApplications.html" title="Business Management">Business Management</a></li>
            <li><a href="ERP.html" title="Technology Services">Technology Services</a></li>
            <li><a href="SoftwareAnalysis&Design.html" title="Custom Development">Custom Development</a></li>
            <li><a target="_blank" href="Online&PrintmediaAdvertising.html" title="Web & Multimedia">Web & multimedia</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="foot-copy container"><span id="copy-year">© 2014</span> <a href="www.eliteitsoft.com" title="Elite Software Solutions.">Elite Software Solutions.</a> All rights reserved.</div>
  </div>
  <span id="scroll"></span>
</footer>
<script type="text/javascript" src="images/SubPages/jquery.min.js"></script> 
<script type="text/javascript" src="images/SubPages/image_cycle.js"></script> 

<span style="display: none;" id="backToTop">Back to Top</span>

<div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>

</body></html>