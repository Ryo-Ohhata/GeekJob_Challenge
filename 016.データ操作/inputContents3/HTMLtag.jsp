<%-- 
    Document   : HTMLtest
    Created on : 2018/05/22, 11:31:25
    Author     : hatar
--%>

<%@ page import="java.util.ArrayList" %>

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                String[] Manga = request.getParameterValues("manga");
                for(int i=0;i<=Manga.length-1;i++){
                    int manga = Integer.parseInt(Manga[i]);
                    switch(manga){
                    case 1:
                        out.println("<p><a href='https://www.amazon.co.jp/%E5%AF%84%E7%94%9F%E7%8D%A3%EF%BC%88%EF%BC%91%EF%BC%89-%E3%82%A2%E3%83%95%E3%82%BF%E3%83%8C%E3%83%BC%E3%83%B3%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E5%B2%A9%E6%98%8E%E5%9D%87-ebook/dp/B009KWUID8/ref=sr_1_5?ie=UTF8&qid=1526961486&sr=8-5&keywords=%E5%AF%84%E7%94%9F%E7%8D%A3'"
                                + "target='_blank'>寄生獣</a>を買いに行く</p>");
                        break;
                    case 2:
                        out.println("<p><a href='https://www.amazon.co.jp/%E4%B8%83%E5%A4%95%E3%81%AE%E5%9B%BD%EF%BC%88%EF%BC%91%EF%BC%89-%E3%83%93%E3%83%83%E3%82%B0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E5%B2%A9%E6%98%8E%E5%9D%87-ebook/dp/B00U5DBVKA/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1526964018&sr=1-1&keywords=%E4%B8%83%E5%A4%95%E3%81%AE%E5%9B%BD'"
                                + "target='_blank'>七夕の国</a>を買いに行く</p>");
                        break;
                    case 3:
                        out.println("<p><a href='https://www.amazon.co.jp/%E3%83%92%E3%82%B9%E3%83%88%E3%83%AA%E3%82%A8%EF%BC%88%EF%BC%91%EF%BC%89-%E3%82%A2%E3%83%95%E3%82%BF%E3%83%8C%E3%83%BC%E3%83%B3%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E5%B2%A9%E6%98%8E%E5%9D%87-ebook/dp/B009KYCHCG/ref=sr_1_2?s=digital-text&ie=UTF8&qid=1526964215&sr=1-2&keywords=%E3%83%92%E3%82%B9%E3%83%88%E3%83%AA%E3%82%A8'"
                                + "target='_blank'>ヒストリエ</a>を買いに行く</p>");
                        break;
                    case 4:
                        out.println("<p><a href='https://www.amazon.co.jp/%E9%A2%A8%E5%AD%90%E3%81%AE%E3%81%84%E3%82%8B%E5%BA%97-1-%E8%AC%9B%E8%AB%87%E7%A4%BE%E6%BC%AB%E7%94%BB%E6%96%87%E5%BA%AB-%E5%B2%A9%E6%98%8E-%E5%9D%87/dp/4062600684/ref=sr_1_3?s=digital-text&ie=UTF8&qid=1526964258&sr=8-3&keywords=%E9%A2%A8%E5%AD%90%E3%81%AE%E3%81%84%E3%82%8B%E5%BA%97'"
                                + "target='_blank'>風子のいる店</a>を買いに行く</p>");
                        break;
                    case 5:
                        out.println("<p><a href='https://www.amazon.co.jp/%E5%B2%B3%EF%BC%88%EF%BC%91%EF%BC%89-%E3%83%93%E3%83%83%E3%82%B0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E7%9F%B3%E5%A1%9A%E7%9C%9F%E4%B8%80-ebook/dp/B00AQ9I1JW/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1526964308&sr=1-1&keywords=%E5%B2%B3'"
                                + "target='_blank'>岳</a>を買いに行く</p>");
                        break;
                    case 6:
                        out.println("<p><a href='https://www.amazon.co.jp/BLUE-GIANT%EF%BC%88%EF%BC%91%EF%BC%89-%E3%83%93%E3%83%83%E3%82%B0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E7%9F%B3%E5%A1%9A%E7%9C%9F%E4%B8%80-ebook/dp/B00GSMDY48/ref=sr_1_2?s=digital-text&ie=UTF8&qid=1526964340&sr=1-2&keywords=blue+giant'"
                                + "target='_blank'>BLUE GIANT</a>を買いに行く</p>");
                        break;
                    }
                }
        %>
    </body>
</html>
