/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import Sql.SqlLibros;
import Sql.SqlVentas;
import entidad.Autor;
import entidad.AutorLibro;
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
import utilidades.Conexion;

/**
 *
 * @author ELIANA
 */
public class DaoLibros {

    private Connection conn;

    public DaoLibros() {
        conn = Conexion.getInstance();
    }

    public DaoLibros(Connection conn) {
        this.conn = conn;
    }

    public Libro saveLibro(Libro libro) {//validar Conexion
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

    public Libro getLibros(String idLibro) {
        Libro libro = new Libro();
        try {
            PreparedStatement lista = conn.prepareStatement(SqlLibros.getLibrosByID(idLibro));
            lista.setString(1, idLibro);
            ResultSet respuesta = lista.executeQuery();
            if (!respuesta.next()) {
                System.out.println("No records found");
                return null;
            } else {
                do {
                    libro.setIdLibro(respuesta.getString("ID_LIBROS"));
                    libro.setNombreLibro(respuesta.getString("NOMBRE_LIBRO"));
                    libro.setValor(respuesta.getString("VALOR"));
                    System.out.println("Busqueda exitosa...\n");
                    return libro;
                } while (respuesta.next());
            }
        } catch (Exception e) {
            System.out.println("Error Artista no registrado...\n");
            e.getMessage();
        } finally {
            try {
            } catch (Exception e) {
            }
        }//cierra finally
        return libro;
    }

    public List<Libro> listLibrosByCategoria(String categoria) {
        // categoria ="44";
        List<Libro> result = new ArrayList<>();
        try {
            PreparedStatement lista = conn.prepareStatement(SqlLibros.getLibrosByCategoria(categoria));
            lista.setString(1, categoria);
            ResultSet respuesta = lista.executeQuery();
            while (respuesta.next()) {
                Libro paramet = new Libro();
                paramet.setIdLibro(respuesta.getString("ID_LIBROS"));
                paramet.setNombreLibro(respuesta.getString("NOMBRE_LIBRO"));
                paramet.setCategoria(new Categoria(respuesta.getString("ID_CATEGORIA"), respuesta.getString("DESCRIPCION")));
                paramet.setEditorial(new Editorial(respuesta.getString("ID_EDITORIAL"), respuesta.getString("NOMBRE_EDITORIAL")));
                paramet.setNroPaginas(respuesta.getString("NRO_PAGINAS"));
                paramet.setAnioPublicacion(respuesta.getString("ANIO_PUBLICACION"));
                paramet.setUbicacion(new Ubicacion(respuesta.getString("ID_UBICACION"), respuesta.getString("NOMBRE_UBICACION")));
                paramet.setValor(respuesta.getString("VALOR"));
                paramet.setAutor(new AutorLibro(new Autor(respuesta.getString("ID_AUTOR"), respuesta.getString("NOMBRE_COMPLETO"), respuesta.getString("PAIS_NAC")), new Libro()));
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
