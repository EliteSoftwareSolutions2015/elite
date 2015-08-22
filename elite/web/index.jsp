<!DOCTYPE html>
<html><head>
<%@page import="Books.AddBooks" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException" %>
<%@page import="sun.jdbc.odbc.JdbcOdbcDriver" %>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta charset="utf-8"/>
<meta name="author" content="Elite"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"/>
<link rel="canonical" href="http://www.eliteitsoft.com/"/>
<title>Elite Software Solutions</title>
<meta name="Keywords" content="Software Development,UI Development, GUI development, Web development, Website development, Web portal development, JSP Project development, Swing Project development, Desktop Software Development, SWT Software Development, JAVA Programming, JAVA Software Development, Core Java Programming, Java Tutorials, Java Training, Website development training, Graphics Designing, LOGO Designing, Web hosting, Domain Registration, ERP Solutions, Project Management, Project Design, Software Development Life Cycle"/>
<meta name="description" content="Elite Software Solutions is a company involved in application side software development. Elite masters in designing and implementation of customized LAN and Internet applications."/>
<link href="images/Elite_icon.png" rel="SHORTCUT ICON"/>
<link href="images/css.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="images/new-style.css"/>
<link type="text/css" rel="stylesheet" href="images/my-slider.css"/>
<link href="images/new-theme.css" type="text/css" rel="stylesheet"/>
<script src="images/jquery-lib-min.js"></script> 
<script src="images/jquery.js" type="text/javascript"></script> 
<script src="images/myslider.js" type="text/javascript"></script> 

</head>
<body>

<header>
  <div class="topheader">
    <div class="header clearfix container">
      <div class="logo fl" itemscope="" itemtype="http://schema.org/Organization">
	  		<a itemprop="url" href="http://www.eliteitsoft.com/"><img itemprop="logo" title="Elite Software Solutions" alt="Elite Software Solutions" src="images/EliteLogoNGreen1.png" ></a>
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
              <li class="dropdown"><span>Support <span class="drop-icon">&nbsp;</span></span>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-head"><a href="News.html" title="Support">Support</a></div>
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
              <li class="miconShow" id="prdTab"><a href="#" title="Services">Services</a></li>
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
</header>
<section class="home-banner pr clearfix">
  <div style="height: 471px;" id="MySlider">
    <div class="slider_container">
      <div style="display: block; z-index: 1; opacity: 1;" class="slide fst-slide"> <img src="images/Slide1.jpeg" alt="Information Technology - Elite">
        <div class="slide_content">
          <div class="slide_content_wrap">
            <h2 style="opacity: 1; margin-top: 0px;" class="title">Information Technology,<br>
              Made simple.</h2>
          </div>
        </div>
      </div>
      <div style="opacity: 1; z-index: 0; display: none;" class="slide snd-slide"> <img src="images/Slide2.jpg" alt="System Solutions - Complete Customer Satisfaction" style="margin-top:-60px;">
        <div class="slide_content">
          <div class="slide_content_wrap left">
            <p style="opacity: 0; margin-top: -10px;" class="title">System Solutions</p>
            <h2 style="opacity: 0; margin-top: -10px;" class="description">Complete Customer Satisfaction</h2>
            <a style="opacity: 0; margin-top: -10px;" href="BussAppl&Solutions.html" class="readmore">Learn more >></a> </div>
        </div>
      </div>
      <div style="z-index: 0; opacity: 1; display: none;" class="slide trd-slide"> <img src="images/Slide3.jpg" alt="Technology Solutions">
        <div class="slide_content">
          <div class="slide_content_wrap whiteText">
            <h2 style="opacity: 0; margin-top: -30px;" class="title">Technology Solutions</h2>
            <p style="opacity: 0; margin-top: -10px;" class="description"> <br>
            </p>
		</div>
        </div>
      </div>
    </div>
    <div style="width: 315px;" class="timers">
      <div class="timer">
        <div style="width: 70.9833%; overflow: hidden;" class="progress"></div>
      </div>
      <div class="timer">
        <div style="width: 0%;" class="progress"></div>
      </div>
      <div class="timer">
        <div style="width: 0%;" class="progress"></div>
      </div>
    <div class="timer"><div style="width: 0%;" class="progress"></div></div><div class="timer"><div style="width: 0%;" class="progress"></div></div><div class="timer"><div style="width: 0%;" class="progress"></div></div></div>
    <div style="left: 0px; top: 210.5px;" class="slidePrev"><span></span></div>
    <div style="right: 0px; top: 210.5px; opacity: 0.2;" class="slideNext"><span></span></div>
    <section class="banner-highlight"> 
      <!--span class="but-min but-maximize"><span class="minimize">&and;</span><span class="maximize">&or;</span></span-->
      <div class="clearfix col-3 container">
        <div class="fl">
          <div class="hl-cont clearfix"> <a href="School_Product.html" class="clearfix" title="Complete School Management ERP - Elite Softwares"> <img src="images/ERPhome1.jpg" alt="ERP Manage School" > <span>Complete School Management Application - School SMS</span></a> </div>
        </div>
        <div class="fl">
          <div class="hl-cont clearfix"> <a href="WebDevelopment.html" class="clearfix" title="Web Designing - Elite Softwares"> <img src="images/Designing2.jpg" alt="Web Portal Development" > <span>Get designed by professional developers - Static, dynamic & Ecommerce based websites</span> </a> </div>
        </div>
        <div class="fl">
          <div class="hl-cont clearfix"> <a href="Inventory_Product.html" class="clearfix" target="_blank" title="Store Inventory"> <img src="images/Inventoryhome2.jpg" alt="Inventory Management" > <span>Inventory Management Software - Sales, Purchase, Stock, Payroll, Purchase orders</span></a> </div>
        </div>
      </div>
    </section>
  </div>
</section>
<section class="lighter">
  <div class="container sheet-block">
    <div class="main-sheet">
      <h1>Custom Software Development, Elite</h1>
      <p>Elite is one of the leading company with its simplified software solutions that are easy to use, easy to deploy, and easy on your budget - no costly consulting fees or over-priced licenses.</p>
      <ol class="prod-list clearfix">
        <li class="network"><a href="ComplexGUIApplications.html" title="Windows Application - Elite" ><i class="prod-icons icon-windows"></i><span>Windows Application</span></a> </li>
        <li><a href="DatabaseDesign&Maintenance.html" title="Database Applications - Elite"><i class="prod-icons icon-database"></i><span>Database Application</span></a> </li>
        <li><a href="ERP.html" title="Enterprise Planning - Elite"><i class="prod-icons icon-enterprise"></i><span>Enterprise Planning</span></a> </li>
        <li><a href="WebDevelopment.html" title="Web Applications - Elite"><i class="prod-icons icon-world"></i><span>Web Applications</span></a> </li>
        <li><a href="ECommerce.html" title="E-Commerce - Elite"><i class="prod-icons icon-ecommerce"></i><span>E-Commerce Application</span></a> </li>
        <li><a href="School_Product.html" title="Java Application Development - Elite"><i class="prod-icons icon-java"></i><span>Java Application Development</span></a> </li>
        <li><a href="DomainRegistration&WebHosting.html" title="Web Hosting Solutions - Elite"><i class="prod-icons icon-hosting"></i><span>Web Hosting Solutions</span></a> </li>
      </ol>
    </div>
  </div>
</section>
<section class="dark">
  <div class="container">
    <ol class="customer-list clearfix">
      <li class="fl">
        <div class="feature-cont">
          <h3><span class="icon-toppos icon-events pa"></span>Client Testimonials</h3>
		  <div class="feedburnerFeedBlock" id="">
		  <p class="feedTitle"><a href="">Client Testimonials</a></p>
		  <ul>
		  	<li>
				<span class="headline"><a href="Customers.html" target="_blank">We appreciate on the exemplary 7 years service rendered towards the successful completion of the project</a></span>
					<p class="feedItemAuthor">Moulana Maqsood Imran, Principal Jameululoom</p>
				<div> Principal Jame - ul - uloom </div>
			</li>
			<li><span class="headline"><a href="Customers.html" target="_blank">I Appreciate his kind and sincere effort in developing the project and providing successful service past 7 Years</a></span>
				<p class="feedItemAuthor">Mr. R Roshan Baig, Chairmen BET</p>
				<div>Chairmen, Bismillah Eduction Trust </div>
			</li>
			<li><span class="headline"><a href="Customers.html" target="_blank">I thank the elite team for their hard work and sincere service for the project completion </a></span>
				<p class="feedItemAuthor">Mr. Saifullah, Principal Al-Ameen Residential School</p>
				<div> </div>
			</li>
			</ul>
		 <div id="creditfooter"><a href="" target="_blank"><img src="images/buzzboost-pwrd.gif" alt="" style="border:0"></a></div>
		 </div>
          <p class="txt-right link-more"><a href="Customers.html" title="More" target="_blank">More >></a></p>
        </div>
      </li>
      <li class="fl">
        <div class="feature-cont">
          <h3><span class="icon-toppos icon-events pa"></span>Technology Expertise</h3>
          <ol class="news-list">
            <li>
                <h4><a href="TechnologyExpertise.html"><strong>Microsoft:</strong>  C, C++, Visual Basic 6.0, ASP 3.0, HTML5, DHTML, XML, SQL Server 7.0, 2000, MS Access....</a></h4>
            </li>
            <li>
                <h4><a href="TechnologyExpertise.html"><strong>Oracle:</strong> JAVA/J2EE, EJB's, jsp, servlets, jstl, MY SQL Server, Oracle 10g, JavaScript, CSS3, JQuery, Liferay 6, Swing, Struts MVC...</a></h4>
            </li>
          </ol>
          <p class="txt-right link-more"><a href="TechnologyExpertise.html" title="More" target="_blank">More >></a></p>
        </div>
      </li>
    </ol>
  </div>
</section>
<%!

        HttpServletRequest request;
        HttpServletResponse response;
        String Query,ct;
        int cnt,ft = 0;
        private PreparedStatement ps;
        private ResultSet rs;
//        public static Connection conn;

%>

<% 
  
//    static final File file = new File(resource.getPath()+ "/Books/library.accdb");

    
    //    static final File file = new File(resource.getPath());
//    static String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ="+file.getAbsolutePath()+"";

   try{ 
//        Class.forName("com.mysql.jdbc.Driver");
//        conn = DriverManager.getConnection("jdbc:mysql://localhost/company","root","password");
//        conn = DriverManager.getConnection("jdbc:mysql://118.67.248.245:3306/elitecompany","elitecompany","password");
        AddBooks.setConnection();
        session.setAttribute("Logged", "false");
       }catch(Exception e){
           out.print(e.getCause());
       };

%>

<footer>
  <div class="sec-pTB bg-l-grey" id="btmscroll">
    <div class="footer container clearfix">
      <div class="col1">
        <div class="foot-head">About Us</div>
        <div>
          <p class="no-mrg">Elite Software Solutions is a company involved in application side software development. Elite masters in designing and implementation of customized LAN and Internet applications.  Elite specializes in building Windows-based systems that access data in all popular SQL databases including MS SQL Server, Oracle, and MS Access. </p>
          <p class="txt-right link-more"><a href="AboutusMission.html">More >></a></p>
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
        <h3 class="ss-head">Subscribe</h3>
        <form onsubmit="return subscribeNl()" method="post" name="subscribe" class="me-nl" action="quickSubmit.jsp">
          <div class="clearfix pr">
            <input id="emailID" placeholder="Email*" size="32" class="txtfield" name="email" type="text">
            <input value="Subscribe" id="subscribe" name="subscribeMe" type="submit">
          </div>
        </form>
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
      
    <div class="foot-copy container"><span id="copy-year">� 2014</span> <a href="www.eliteitsoft.com" title="Elite Software Solutions.">Elite Software Solutions.</a> All rights reserved.
<%
    try{
            Query = "Select * from counter";
            ps = AddBooks.conn.prepareStatement(Query);

            rs = ps.executeQuery();
            ft = rs.getFetchDirection();
            rs.setFetchDirection(ResultSet.FETCH_FORWARD);

            if (rs.next()){
                cnt = rs.getInt("IDNO");

                out.print("This Page has been viewed No. : "+cnt);
            }

            ps.close();
       }catch(Exception s){
           out.println(s.getCause());
       }
    
        //    rs.close();

%>
</div>
<%

    try{
            Query = "Update counter Set IDNO=? where IDNO='"+cnt+"'";
            ps = AddBooks.conn.prepareStatement(Query);

            cnt = cnt + 1;
        //Use this for my sql       ps.setInt(1, cnt);
            ps.setString(1, String.valueOf(cnt));

            ps.executeUpdate();
            ps.close();
       }catch(Exception p){
           out.println(p.getMessage());
           out.println(p.getCause());
           out.println(p.getStackTrace());
       }
%> 

  </div>
  <span id="scroll"></span>
</footer>
<script src="images/jquery-lib-min.js"></script> 
<script src="images/jquery.js" type="text/javascript"></script> 
<script src="images/myslider.js" type="text/javascript"></script> 
<script type="text/javascript">
$(document).ready(function(){
	new MySlider().init({
		duration: "1000", /* Fade Speed (miliseconds) */
		pause:    "6000"  /* Autoslide pause between slides (miliseconds)*/
	});
});
</script>

<span style="display: none;" id="backToTop">Back to Top</span>
</body></html>