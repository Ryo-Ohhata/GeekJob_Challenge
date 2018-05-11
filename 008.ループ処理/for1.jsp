<%-- 
    Document   : for1
    Created on : 2018/05/11, 15:35:19
    Author     : hatar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            long result = 1;
            for(int i=1;i<=20;i++){
            result *= 8;
            out.println(result);out.print("<br>");
            }
        %>
    </body>
</html>
