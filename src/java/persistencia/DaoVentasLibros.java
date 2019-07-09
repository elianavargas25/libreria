/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import Sql.SqlVentas;
import entidad.Ventas;
import entidad.VentasLibros;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utilidades.Conexion;

/**
 *
 * @author eliana.vargas
 */
public class DaoVentasLibros {
    
    private Connection conn ;
    
    public DaoVentasLibros(){
            conn = Conexion.getInstance();
    }
    
    public DaoVentasLibros(Connection conn){
            this.conn = conn;
    }

    public VentasLibros saveVentas(VentasLibros ventaLibros) {//validar Conexion
        String mensaje = "";
        try {
            PreparedStatement vent = conn.prepareStatement(SqlVentas.insert());

            int index = 1;

            vent.setObject(index++, ventaLibros.getVentas().getIdVenta());
            vent.setObject(index++, ventaLibros.getLibros().getIdLibro()); 
            vent.setObject(index++, ventaLibros.getCantidad());
            vent.setString(index++, ventaLibros.getValor());

            int result = vent.executeUpdate();
            System.out.println("Registro de Ventas exitoso...\n");
            if (vent.getUpdateCount() > 0) {
                mensaje = "La Venta se registró correctamente";
            } else {
                mensaje = "Error al registrar Ventas";
            }
        } catch (Exception e) {
            System.out.println("Error al registrar ventas");
            e.printStackTrace();
        } finally {
            try {
            } catch (Exception e) {
               
            }
        }//cierra finally
        return ventaLibros;
    }//cierra guardar
    
}
