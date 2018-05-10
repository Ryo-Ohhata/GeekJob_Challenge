<%-- 
    Document   : FourArithmeticOperations
    Created on : 2018/05/10, 11:19:32
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
final int num1 = 100;

num = num + num1;
out.print(num+",");
num = num - num1;
out.print(num+",");
num = num * num1;
out.print(num+",");
num = num / num1;
out.print(num+",");
num = num % num1;
out.print(num+",");


%>
    </body>
</html>
