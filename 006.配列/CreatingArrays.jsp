<%--
    Document   : switch2
    Created on : 2018/05/11, 12:40:29
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
    <%@ page import = "java.util.ArrayList" %>
    <%
        ArrayList<String> data1 = new ArrayList<String>();
        data1.add("10");
        data1.add("100");
        data1.add("soeda");
        data1.add("hayasi");
        data1.add("-20");
        data1.add("118");
        data1.add("END");
        out.println(data1.get(0));
        out.println(data1.get(1));
        out.println(data1.get(2));
        out.println(data1.get(3));
        out.println(data1.get(4));
        out.println(data1.get(5));
        out.println(data1.get(6));
   %> 
