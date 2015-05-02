<?xml version="1.0"?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2">
<!--
 - CookieProperties.jsp
 - Copyright (c) 2003 by Dr. Herong Yang, http://www.herongyang.com/
-->
<jsp:directive.page contentType="text/html"/>
<html><body>
<p>
<jsp:directive.page import="javax.servlet.http.Cookie"/>
<jsp:scriptlet><![CDATA[
// Setting a cookie with default properties
   out.println("<b>Cookie with default properties:</b><br/>");
   Cookie c = new Cookie("Date","30-Mar-2003");
   response.addCookie(c);
   out.println("Name: "+c.getName()+"<br/>");
   out.println("Value: "+c.getValue()+"<br/>");
   out.println("Domain: "+c.getDomain()+"<br/>");
   out.println("Path: "+c.getPath()+"<br/>");
   out.println("MaxAge: "+c.getMaxAge()+"<br/>");
   out.println("Version: "+c.getVersion()+"<br/>");

// Setting a cookie with specified properties
   out.println("<b>Cookie with specified properties:</b><br/>");
   c = new Cookie("User","Herong Yang");
   c.setMaxAge(3*24*60*60);
   response.addCookie(c);
   out.println("Name: "+c.getName()+"<br/>");
   out.println("Value: "+c.getValue()+"<br/>");
   out.println("Domain: "+c.getDomain()+"<br/>");
   out.println("Path: "+c.getPath()+"<br/>");
   out.println("MaxAge: "+c.getMaxAge()+"<br/>");
   out.println("Version: "+c.getVersion()+"<br/>");

// Checking properties of the received cookies
   out.println("<b>Properties of the received cookies:</b><br/>");
   Cookie[] cookies = request.getCookies();
   int n = 0;
   if (cookies!=null) {
      n = cookies.length;
      for (int i=0; i<cookies.length; i++) {
         out.println("Name: "+cookies[i].getName()+"<br/>");
         out.println("Value: "+cookies[i].getValue()+"<br/>");
         out.println("Domain: "+cookies[i].getDomain()+"<br/>");
         out.println("Path: "+cookies[i].getPath()+"<br/>");
         out.println("MaxAge: "+cookies[i].getMaxAge()+"<br/>");
         out.println("Version: "+cookies[i].getVersion()+"<br/>");
      }
   }
]]></jsp:scriptlet>
</p>
</body></html>
</jsp:root>
