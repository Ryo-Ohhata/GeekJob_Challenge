<%-- 
    Document   : QueryString1
    Created on : 2018/05/21, 16:49:25
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
            String Type = request.getParameter("type");
            String Total = request.getParameter("total");
            String Count = request.getParameter("count");
            int type = Integer.parseInt(Type);
            int total= Integer.parseInt(Total);
            int count = Integer.parseInt(Count);
          
            switch(type){
                case 1:
                    out.println("雑貨");
                    break;
                case 2:
                    out.println("生鮮食品");
                    break;
                case 3:
                    out.println("その他");
                    break;
            }
            int unitPrice = total / count;
            out.println("単価：" + unitPrice + "円");
            if(total >= 5000){
                Double point = total * 0.05;
                out.println("付与ポイント：" + point + "P");
            }else if(3000 <= total && total < 5000){
                Double point = total * 0.04;
                out.println("付与ポイント：" + point + "P");
            }else{
                out.println("付与ポイント：なし" );
            }
        %>
            
            
    </body>
</html>
