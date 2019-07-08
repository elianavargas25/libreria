/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import Sql.SqlLibros;
import Sql.SqlVentas;
import entidad.Categoria;
import entidad.Editorial;
import entidad.Libro;
import entidad.Ubicacion;
import entidad.Ventas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utilidades.conexion;

/**
 *
 * @author ELIANA
 */
public class DaoLibros {

    Connection conn = conexion.getInstance();
    Libro libro = new Libro();

    public Libro saveLibro(Libro libro) {//validar conexion
        String mensaje = "";
        try {
            PreparedStatement lib = conn.prepareStatement(SqlLibros.insert());
            String consecutivo = null;
            ResultSet resultado = null;
            PreparedStatement instruccion = null;
            String sql = "SELECT " + "SEQ_LIBROS" + ".NEXTVAL value FROM DUAL";
            instruccion = conn.prepareStatement(sql);
            resultado = instruccion.executeQuery();
            if (resultado.next()) {
                consecutivo = resultado.getString("value");
            }

            int index = 1;

            lib.setString(index++, consecutivo);
            lib.setString(index++, libro.getNombreLibro());
            lib.setObject(index++, libro.getCategoria().getIdCategoria());
            lib.setObject(index++, libro.getEditorial().getIdEditorial());
            lib.setString(index++, libro.getNroPaginas());
            lib.setString(index++, libro.getAnioPublicacion());
            lib.setObject(index++, libro.getUbicacion().getIdUbicacion());
            lib.setString(index++, libro.getValor());

            int result = lib.executeUpdate();
            System.out.println("Registro de libro exitoso...\n");
            if (lib.getUpdateCount() > 0) {
                mensaje = "El libro se registró correctamente";
            } else {
                mensaje = "Error al registrar libro";
            }
        } catch (Exception e) {
            System.out.println("Error al registrar libro");
            e.printStackTrace();
        } finally {
            try {
            } catch (Exception e) {
            }
        }//cierra finally
        return libro;
    }//cierra guardar

    public Libro getLibros(String categoria) {
        try {
            PreparedStatement stm = conn.prepareStatement(SqlLibros.getLibrosByCategoria());
            stm.setString(1, categoria);
            ResultSet rs = stm.executeQuery();

            if (!rs.next()) {                            //if rs.next() returns false
                //then there are no rows.
                System.out.println("No records found");
                return null;
            } else {
                do {
                    libro.setIdLibro(rs.getString(1));
                    libro.setNombreLibro(rs.getString(2));
                    libro.setCategoria((Categoria) rs.getObject(3));
                    libro.setEditorial((Editorial) rs.getObject(4));
                    libro.setNroPaginas(rs.getString(5));
                    libro.setAnioPublicacion(rs.getString(6));
                    libro.setUbicacion((Ubicacion) rs.getObject(7));
                    libro.setValor(rs.getString(8));
                    System.out.println("Busqueda exitosa..");
                    return libro;
                } while (rs.next());
            }
        } catch (Exception e) {
            System.out.println("Error al buscar los libros...\n");
            e.getMessage();
        } finally {
            try {
            } catch (Exception e) {
            }
        }//cierra finally
        return libro;
    }

    public List<Libro> listLibros(Categoria categoria) {
        List<Libro> result = new ArrayList<>();
        try {
            PreparedStatement lista = conn.prepareStatement(SqlLibros.getLibrosByCategoria());
            ResultSet respuesta = lista.executeQuery();
            while (respuesta.next()) {
                Libro paramet = new Libro();
                paramet.setIdLibro(respuesta.getString(1));
                paramet.setNombreLibro(respuesta.getString(1));
                paramet.setCategoria((Categoria) respuesta.getObject(1));
                paramet.setEditorial((Editorial) respuesta.getObject(1));
                paramet.setNroPaginas(respuesta.getString(2));
                paramet.setAnioPublicacion(respuesta.getString(2));
                paramet.setValor(respuesta.getString(3));
                result.add(paramet);
            }//fin while
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
            } catch (Exception e) {
            }//fin try/catch
        }//fin try/catch/finall
        return result;
    }
}
