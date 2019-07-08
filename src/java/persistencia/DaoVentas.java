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
import utilidades.conexion;

/**
 *
 * @author ELIANA
 */
public class DaoVentas {

    Connection conn = conexion.getInstance();
    Ventas ventas = new Ventas();

    public Ventas saveVentas(Ventas venta) {//validar conexion
        String mensaje = "";
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

            int index = 1;

            vent.setString(index++, consecutivo);
            vent.setObject(index++, venta.getCliente().getNroDocumento());
            vent.setDate(index++, new java.sql.Date(new java.util.Date().getTime()));
            vent.setString(index++, venta.getTotal());

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
        return venta;
    }//cierra guardar

}
