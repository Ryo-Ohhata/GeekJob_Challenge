<%-- 
    Document   : switch1
    Created on : 2018/05/10, 12:53:25
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
            int num = 100;
            switch(num){
                case 1:
                    out.println("one");
                    break;
                case 2:
                    out.println("two");
                    break;
                default:
                    out.println("想定外");
                    break;
            }
        %>
    </body>
</html>
