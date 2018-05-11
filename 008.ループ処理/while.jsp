<%-- 
    Document   : while
    Created on : 2018/05/11, 16:32:03
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
            int num = 1000;
            while(num>=100){
                num /= 2;
            }
            out.print(num);
        %>
    </body>
</html>
