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
                    out.println("�G��");
                    break;
                case 2:
                    out.println("���N�H�i");
                    break;
                case 3:
                    out.println("���̑�");
                    break;
            }
            int unitPrice = total / count;
            out.println("�P���F" + unitPrice + "�~");
            if(total >= 5000){
                Double point = total * 0.05;
                out.println("�t�^�|�C���g�F" + point + "P");
            }else if(3000 <= total && total < 5000){
                Double point = total * 0.04;
                out.println("�t�^�|�C���g�F" + point + "P");
            }else{
                out.println("�t�^�|�C���g�F�Ȃ�" );
            }
        %>
            
            
    </body>
</html>
