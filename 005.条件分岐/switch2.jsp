<%-- 
    Document   : switch2
    Created on : 2018/05/10, 13:29:29
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
            char character = 'あ';
            switch(character){
                case 'あ':
                    out.println("日本語");
                    break;
                case 'A':
                    out.println("英語");
                    break;
                default:
            }
        %>
    </body>
</html>
