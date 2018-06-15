/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelets;

import buisness.UrlReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author dell-soncini
 */
@WebServlet(name = "artualizar", urlPatterns = {"/atualizar"})
public class artualizar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet artualizar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet artualizar at " + request.getContextPath() + "</h1>");
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
         HttpSession session = request.getSession();
         User user = (User)session.getAttribute("User");
         if(user == null)
         {
            response.sendRedirect("/SisFimGraficos/index");
         }
         else{
            request.getRequestDispatcher("Atualizar.jsp").forward(request, response);
         }
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
         
         String retorno = UrlReader.getURL("http://localhost:8080/financeiro/api/getAll");
         if(retorno !="")
         {
            try (PrintStream out = new PrintStream(new FileOutputStream("C:\\Users\\dell-soncini\\Documents\\NetBeansProjects\\SisWeGraficos\\build\\web\\js\\dados.json"))) {
                out.print(retorno);
            } 
            request.setAttribute("Atualizado", "Dados Atualizados com sucesso");
         }
         else{
             request.setAttribute("Atualizado", "Erro na Atualização");
         }
         
         request.getRequestDispatcher("/Atualizar.jsp").forward(request, response);
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
