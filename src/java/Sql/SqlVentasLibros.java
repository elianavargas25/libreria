/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sql;

/**
 *
 * @author eliana.vargas
 */
public class SqlVentasLibros {

    public static String insert() {
        return "INSERT INTO BIBLIOTECA.VENTA_LIBROS (ID_VENTAS, ID_LIBROS,CANTIDAD,VALOR) "
                + "VALUES (?,?,?,?)";
    }
}
