/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entidad.Cliente;
import entidad.Ventas;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author eliana.vargas
 */
public class MaestroDetalle extends HttpServlet {

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
           Ventas venta = new Ventas();
        venta.setCliente(new Cliente(request.getParameter("txtNroDoc")));
        String fecha = request.getParameter("txtFechaVenta");
        DateFormat format = new SimpleDateFormat("dd/MM/YYYY HH:mm:ss");
        Date FechaVenta = format.parse(fecha);
        venta.setFechaVenta(FechaVenta);
        venta.setTotal(request.getParameter("txtTotal"));
        //venta.getListVentas().add(request.)
        venta.setCliente(new Cliente(request.getParameter("txtprimernombre")));
        
        
        String mensaje = "";
        String modulo = "list-shop.jsp"; // validar con la vista

        //request.setAttribute("mensaje", null);
        request.setAttribute("modulo", null);
        request.setAttribute("datos", null);
        
        if ("Guardar".equals(request.getParameter("action"))) {
           
//                    try {
//                        venta.setCliente(cliente);
//                        venta.setIdEmpresa(idEmpresa);
//                        venta.setReproduccion(reprod);
//                        
//                        //se guarda los datos en la tabla
//                        manager.registrarVentas(venta);
//                        mensaje = "El informe de las ventas se registró correctamente";
//                    } catch (Exception e2) {
//                        mensaje = "Error en el registro de informe de ventas, favor verificar";
//                        limpiar();
//                    }
                }//fin guardar
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
            Logger.getLogger(MaestroDetalle.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(MaestroDetalle.class.getName()).log(Level.SEVERE, null, ex);
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
