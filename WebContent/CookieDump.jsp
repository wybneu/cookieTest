<?xml version="1.0"?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2">
<!--
 - CookieDump.jsp
 - Copyright (c) 2005 by Dr. Herong Yang, http://www.herongyang.com/
-->
<jsp:directive.page contentType="text/html"/>
<html><body>
<p>
<jsp:directive.page import="javax.servlet.http.Cookie"/>
<jsp:scriptlet><![CDATA[
// Setting a temporary cookie
   out.println("<b>Temporary cookie:</b><br/>");
   Cookie c = new Cookie("Language","English");
   response.addCookie(c);
   out.println("Name: "+c.getName()+"<br/>");
   out.println("Value: "+c.getValue()+"<br/>");
   out.println("Domain: "+c.getDomain()+"<br/>");
   out.println("Path: "+c.getPath()+"<br/>");
   out.println("MaxAge: "+c.getMaxAge()+"<br/>");
   out.println("Version: "+c.getVersion()+"<br/>");

// Setting a persisted cookie
   out.println("<b>Persisted cookie:</b><br/>");
   c = new Cookie("User","Herong Yang");
   c.setMaxAge(3*24*60*60);
   response.addCookie(c);
   out.println("Name: "+c.getName()+"<br/>");
   out.println("Value: "+c.getValue()+"<br/>");
   out.println("Domain: "+c.getDomain()+"<br/>");
   out.println("Path: "+c.getPath()+"<br/>");
   out.println("MaxAge: "+c.getMaxAge()+"<br/>");
   out.println("Version: "+c.getVersion()+"<br/>");

// Setting a temporary cookie with specified properties
   out.println("<b>Temporary cookie with domain defined:</b><br/>");
   c = new Cookie("Password","top_secret");
   c.setDomain("some.com");
   response.addCookie(c);
   out.println("Name: "+c.getName()+"<br/>");
   out.println("Value: "+c.getValue()+"<br/>");
   out.println("Domain: "+c.getDomain()+"<br/>");
   out.println("Path: "+c.getPath()+"<br/>");
   out.println("MaxAge: "+c.getMaxAge()+"<br/>");
   out.println("Version: "+c.getVersion()+"<br/>");

// Setting a persisted cookie with specified properties
   out.println("<b>Persisted cookie with domain defined:</b><br/>");
   c = new Cookie("Login","herong_yang");
   c.setMaxAge(3*24*60*60);
   c.setDomain("some.com");
   response.addCookie(c);
   out.println("Name: "+c.getName()+"<br/>");
   out.println("Value: "+c.getValue()+"<br/>");
   out.println("Domain: "+c.getDomain()+"<br/>");
   out.println("Path: "+c.getPath()+"<br/>");
   out.println("MaxAge: "+c.getMaxAge()+"<br/>");
   out.println("Version: "+c.getVersion()+"<br/>");
]]></jsp:scriptlet>
</p>
</body></html>
</jsp:root>
