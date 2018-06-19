<%-- 
    Document   : Factorization
    Created on : 2018/05/22, 14:28:46
    Author     : hatar
--%>

<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            int num = Integer.parseInt(request.getParameter("factorization"));
            int number = num;
            ArrayList<Integer> fact = new ArrayList<Integer>();
            int i = 2;
            while(i <= num){
                if(num % i == 0){
                    if(i != num){
                        fact.add(i);
                        num /= i;
                    }else{
                        fact.add(i);
                        i++;
                    }
                }else{
                    i++;
                }
            }
            if(fact.size() >= 2){
                out.print("<span>" + number + "=" + fact.get(0) + "</span>");
                for(int f=1;f<=fact.size()-2;f++){
                    out.print("<span>×" + fact.get(f) + "</span>");
                }
                out.print("<span>あまり" + num + "</span>" );
            }else{
                out.print("<span>" + number + "=あまり" + num + "</span>" );
            }
        %>
    </body>
</html>
