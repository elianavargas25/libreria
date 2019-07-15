/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entidad.Libro;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import manager.Manager;

/**
 *
 * @author ELIANA
 */
public class MaestroVentas extends HttpServlet {
    Manager manager = new Manager();
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
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        
        String mensaje = "";
        String modulo = "list-shop.jsp"; // validar con la vista

        //request.setAttribute("mensaje", null);
        request.setAttribute("listaLibros", null);
        request.setAttribute("listaLibrosByCategoria", null);
        request.setAttribute("modulo", null);
        request.setAttribute("datos", null);
        
        if("AdicionarLista".equals(request.getParameter("action"))){
            String idLibro = request.getParameter("idLibro");
            try {
                    List<Libro> listaLibros = manager.listarLibros(idLibro);
                    request.setAttribute("listaLibros", listaLibros);
                    request.getSession(true).setAttribute("listaLibrosByCategoria", listaLibros);
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        
        }
        
        if ("Consultar".equals(request.getParameter("action"))) {
            String categoria = request.getParameter("categoria");
            try {
                    List<Libro> listaLibros = manager.listarLibros(categoria);
                    request.setAttribute("listaLibros", listaLibros);
                    request.getSession(true).setAttribute("listaLibros", listaLibros);
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        } //cierra buscar
        
        request.setAttribute("mensaje", mensaje);
        request.getRequestDispatcher(modulo).forward(request, response);
        
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(MaestroVentas.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(MaestroVentas.class.getName()).log(Level.SEVERE, null, ex);
        }
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
