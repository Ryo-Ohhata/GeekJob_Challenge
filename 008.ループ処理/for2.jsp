<%-- 
    Document   : for2
    Created on : 2018/05/11, 16:10:40
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
        String characters = "";
        for(int i=1;i<=30;i++){
        String n = String.valueOf(i);
        characters +=n+"A";
        }
        out.println(characters);
        %>
    </body>
</html>
