<%-- 
    Document   : if
    Created on : 2018/05/10, 12:37:13
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
        int num = 1;
        
        if(num == 1){
            out.println("1です!");
        }else if(num == 2){
            out.println("プログラミングキャンプ!");
        }else{
            out.println("その他です!");
        }
        %>
    </body>
</html>
