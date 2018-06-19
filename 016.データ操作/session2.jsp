<%-- 
    Document   : session2
    Created on : 2018/05/23, 16:03:29
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
            HttpSession hs = request.getSession();
            request.setCharacterEncoding("Shift_JIS");
            
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String hobby = request.getParameter("hobby");
            
            if(name != null){hs.setAttribute("name",name);}
            if(gender != null){hs.setAttribute("gender",gender);}
            if(hobby != null){hs.setAttribute("hobby",hobby);}
            
            name = (String)hs.getAttribute("name");
            gender = (String)hs.getAttribute("gender");
            hobby = (String)hs.getAttribute("hobby");
            
            
            
            if(name == null){ name = "";}
            if(gender == null){ gender = "";}
            if(hobby == null){ hobby = "";}
            
            String male = null;
            String Female = null;
            if(gender.equals("男")){
                male = "checked";
            }else if(gender.equals("女")){
                Female = "checked";
            }
        %>
        <form action="./session2.jsp" method="post">
            <input type="text" name="name" value=<%= name %> >
          男<input type="radio" name="gender" <%= male %> value="男">
          女<input type="radio" name="gender" <%= Female %> value="女">
            <textarea name="hobby"><%= hobby %></textarea>
            <input type="submit" name="btn">
        </form>
            
    </body>
</html>
