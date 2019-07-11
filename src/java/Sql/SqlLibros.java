/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sql;

/**
 *
 * @author ELIANA
 */
public class SqlLibros {

    public static String insert() {
        return "INSERT INTO  BIBLIOTECA.LIBROS (ID_LIBROS, NOMBRE_LIBRO, CATEGORIA, EDITORIAL, NRO_PAGINAS, ANIO_PUBLICACION, UBICACION, VALOR) "
                + "VALUES (?,?,?,?,?,?,?,?)";
    }

    public static String getLibrosByCategoria(String categoria) {
        return "SELECT LIB.ID_LIBROS, LIB.NOMBRE_LIBRO, LIB.NRO_PAGINAS,LIB.ANIO_PUBLICACION,  LIB.VALOR, CAT.ID_CATEGORIA,\n"
                + "  CAT.DESCRIPCION,EDI.ID_EDITORIAL, EDI.NOMBRE_EDITORIAL,UBI.ID_UBICACION, UBI.NOMBRE_UBICACION,AU.ID_AUTOR,AU.NOMBRE_COMPLETO, AU.PAIS_NAC\n"
                + "FROM LIBROS LIB\n"
                + "INNER JOIN CATEGORIA CAT\n"
                + "ON LIB.CATEGORIA = CAT.ID_CATEGORIA\n"
                + "INNER JOIN EDITORIAL EDI\n"
                + "ON LIB.EDITORIAL = EDI.ID_EDITORIAL\n"
                + "INNER JOIN UBICACION UBI\n"
                + "ON LIB.UBICACION = UBI.ID_UBICACION\n"
                + "INNER JOIN AUTOR_LIBRO AULI\n"
                + "ON AULI.ID_LIBRO = LIB.ID_LIBROS\n"
                + "INNER JOIN AUTOR AU\n"
                + "ON AULI.ID_AUTOR       = AU.ID_AUTOR\n"
                + "WHERE CAT.ID_CATEGORIA = ?";
    }

}
