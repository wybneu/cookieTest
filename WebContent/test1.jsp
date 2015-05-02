<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:directive.page import="javax.servlet.http.Cookie"/>
<%
   out.println("<b>Cookies received by the server:</b><br/>");
   Cookie[] cookies = request.getCookies();
   int n = 0;
   if (cookies!=null) {
      n = cookies.length;
      for (int i=0; i<cookies.length; i++) {
         out.println(cookies[i].getName()+": "
            +cookies[i].getValue()+"<br/>");
      }
   }
   out.println("<b>Cookies added by the server:</b><br/>");
   Cookie c = new Cookie("Cookie_"+n,"value");
   c.setMaxAge(10);
   out.println(c.getName()+": "+c.getValue()+"<br/>");
   response.addCookie(c);
   %>
</p>
</body>
</html>