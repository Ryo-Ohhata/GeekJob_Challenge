/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hatar
 */
public class argumentReturn3 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     String[] method6(String id){
       String[] prof1 = {"001","1996/02/26","静岡県"};
       String[] prof2 = {"002","1990/02/26",null};
       String[] prof3 = {"003","2000/02/26","沖縄県"};
        ArrayList<String[]> datas = new ArrayList<String[]>();
        datas.add(prof1);datas.add(prof2);datas.add(prof3);
        for(int i=0;i<datas.size();i++){
            
            if(id.equals(datas.get(i)[0])){
                String[] prof = datas.get(i);
                return prof;
            }
        }    
        return null;
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ArrayList<String> data = new ArrayList<String>();
                String Id;
                String[] profData;
                for(int limit=1;limit<=2;limit++){
                    String number = String.valueOf(limit);
                    Id = "00" + number;
                    profData = method6(Id);
                    for(int i=1;i<=profData.length-1;i++){
                        data.add(profData[i]);
                    }
                }
                for(int d=0;d<=data.size();d++){
                    if(data.get(d) == null){
                        continue;
                    }
                    out.println("<h1>" + data.get(d) + "</h1>");  
                }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet argumentReturn3</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
