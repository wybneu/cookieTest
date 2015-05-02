
/**
 * HttpRequestGet.java
 * Copyright (c) 2002 by Dr. Herong Yang, http://www.herongyang.com/
 */
import java.io.*;
import java.net.*;
public class HttpRequestGet {
   public static void main(String[] args) {
      String path = "/index.html";
      int port = 80;
      String host = "localhost";
      if (args.length > 0) path = args[0];
      if (args.length > 1) port
         = Integer.valueOf(args[1]).intValue();
      if (args.length > 2) host = args[2];
      String result = "";
      try {
         Socket c = new Socket(host,port);
         BufferedWriter w = new BufferedWriter(new OutputStreamWriter(
            c.getOutputStream()));
         BufferedReader r = new BufferedReader(new InputStreamReader(
            c.getInputStream()));
         String m = "GET "+ path + " HTTP/1.0";
         w.write(m,0,m.length());
         w.newLine();
         w.newLine();
         w.flush();
         while ((m=r.readLine())!= null) {
            System.out.println(m);
         }
         w.close();
         r.close();
         c.close();
      } catch (IOException e) {
         System.err.println(e.toString());
      }
   }
}
