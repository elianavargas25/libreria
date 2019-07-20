/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import entidad.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utilidades.Conexion;

/**
 *
 * @author ELIANA
 */
public class DaoCategorias {

    private Connection conn;

    public DaoCategorias() {
        conn = Conexion.getInstance();
    }

    public DaoCategorias(Connection conn) {
        this.conn = conn;
    }

    public List<Categoria> listCategoria() {
        List<Categoria> result = new ArrayList<>();
        Connection conn = Conexion.getInstance();
        PreparedStatement stTD;
        try {
            stTD = conn.prepareStatement("SELECT ID_CATEGORIA, DESCRIPCION FROM US_BIBLIOTECA.CATEGORIA");
            ResultSet respuesta = stTD.executeQuery();
            while (respuesta.next()) {
                Categoria paramet = new Categoria();
                paramet.setIdCategoria(respuesta.getString("ID_CATEGORIA"));
                paramet.setDescripcion(respuesta.getString("DESCRIPCION"));
                result.add(paramet);
            }//fin while
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(DaoCategorias.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

}
