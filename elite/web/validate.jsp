<form name="form1" method="post" action="enquiry.html">
<div align="center">
<input name="Submit" type="submit" value="back"></div>
</form>
<div align="center">
<%
String key=(String)session.getAttribute("key");
String user = request.getParameter("user_code");
String url = request.getHeader("referer");
String spath=request.getServerName();
RequestDispatcher rd = request.getRequestDispatcher("/enquirySubmit.jsp");
int val=0;
val= spath.indexOf("www.");

    if(val != -1)
    {
       spath=spath.replaceFirst("www.","");
    }
    int domain=url.indexOf(spath); 
    if(domain != -1)
       {
        if(key.compareTo(user)==0)			
            {
            rd = request.getRequestDispatcher("/enquirySubmit.jsp");
            out.print("Verification success");
            rd.forward(request, response);
            }
            else{
            out.print("You have entered wrong verification code!! <br> Please go back and enter proper value.");

           }
        }
    else
    {%>
    <div align=center style='color: red;'><b>Not a Valid Domain</b></div>
		
    <% }
    %>
</div>
