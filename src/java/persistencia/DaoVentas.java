/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import Sql.SqlVentas;
import entidad.Ventas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utilidades.Conexion;

/**
 *
 * @author ELIANA
 */
public class DaoVentas {

      private Connection conn;

    public DaoVentas() {
        conn = Conexion.getInstance();
    }

    public DaoVentas(Connection conn) {
        this.conn = conn;
    }

    public boolean saveVentas(Ventas venta) {//validar Conexion
        String mensaje = "";
        boolean _result = false;
        try {
            PreparedStatement vent = conn.prepareStatement(SqlVentas.insert());
            String consecutivo = null;
            ResultSet resultado = null;
            PreparedStatement instruccion = null;
            String sql = "SELECT " + "SEQ_VENTAS" + ".NEXTVAL value FROM DUAL";
            instruccion = conn.prepareStatement(sql);
            resultado = instruccion.executeQuery();
            if (resultado.next()) {
                consecutivo = resultado.getString("value");
            }
            venta.setIdVenta(consecutivo);

            int index = 1;
            
            vent.setString(index++, venta.getIdVenta());
            vent.setObject(index++, venta.getCliente().getNroDocumento());
            vent.setDate(index++, new java.sql.Date(new java.util.Date().getTime()));
            vent.setString(index++, venta.getTotal());

            int result = vent.executeUpdate();
            System.out.println("Registro de Ventas exitoso...\n");
            if (vent.getUpdateCount() > 0) {
                mensaje = "La Venta se registró correctamente";
                _result = true;
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
        return _result;
    }//cierra guardar

}
