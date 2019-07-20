/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entidad.Cliente;
import entidad.Ventas;
import entidad.VentasLibros;
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
import manager.Manager;

/**
 *
 * @author eliana.vargas
 */
public class MaestroDetalle extends HttpServlet {

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
        Ventas venta = new Ventas();

        Date fecha = new Date();

        String idLibro[] = request.getParameterValues("txtIdlibro");
        String cantidad[] = request.getParameterValues("txtCantidad");
        String total[] = request.getParameterValues("txtValorTotal");

        //venta.getListVentas().add(request.)
        String mensaje = "";
        String modulo = "cart.jsp"; // validar con la vista

        request.setAttribute("mensaje", null);
        request.setAttribute("listaLibros", null);
        request.setAttribute("modulo", null);
        request.setAttribute("datos", null);

        if ("Guardar".equals(request.getParameter("action"))) {

            try {
                venta.getCliente().setNroDocumento("1006765667");
                venta.setFechaVenta(fecha);
                venta.setTotal("0");
                for (int i = 0; i < idLibro.length; i++) {
                    VentasLibros ventaLibro = new VentasLibros();
                    ventaLibro.getLibros().setIdLibro(idLibro[i]);
                    ventaLibro.setCantidad(cantidad[i]);
                    ventaLibro.setValor(total[i]);
                    venta.getListVentas().add(ventaLibro);
                }

                //se guarda los datos en la tabla
                manager.registrarVentas(venta);
                mensaje = "La información se almacenó correctamente";
                request.getSession(true).setAttribute("listaLibros", null);
            } catch (Exception e2) {
                mensaje = "Error al almacenar la información";
            }
        }//fin guardar
        
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
