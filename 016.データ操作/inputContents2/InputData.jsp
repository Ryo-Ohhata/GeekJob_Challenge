<%-- 
    Document   : InputField
    Created on : 2018/05/21, 16:02:16
    Author     : hatar
--%>

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("Shift_JIS");  
            out.println(request.getParameter("textName"));
            out.println(request.getParameter("gender"));
            out.println(request.getParameter("hobby"));
        %>
            
    </body>
</html>
