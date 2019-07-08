/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utilidades.conexion;

/**
 *
 * @author ELIANA
 */
public class DaoCategorias {
    public ResultSet Categori() {
        Connection conn = conexion.getInstance();
       
        PreparedStatement stTD;
        try {
            stTD = conn.prepareStatement("SELECT ID_CATEGORIA, DESCRIPCION FROM CATEGORIA");
            ResultSet result = stTD.executeQuery();
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCategorias.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
}
