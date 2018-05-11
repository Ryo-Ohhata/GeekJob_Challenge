<%-- 
    Document   : for3
    Created on : 2018/05/11, 17:08:58
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
            int total=0;
            for(int i=0;i<=100;i++){
                total+=i;
            }
            out.print(total);
        %>
    </body>
</html>
