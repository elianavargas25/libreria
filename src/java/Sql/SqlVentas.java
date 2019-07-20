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
public class SqlVentas {
    public static String insert() {
        return "INSERT INTO US_BIBLIOTECA.VENTAS (ID_VENTA,NRO_DOCUMENTO,FECHA_VENTA,TOTAL) VALUES (?,?,TO_DATE(?, 'DD-MM-YYYY HH24:MI:SS'),?)";
    }
    
    public static String insertVenta() {
        return "INSERT INTO US_BIBLIOTECA.VENTA_LIBROS (ID_VENTAS, ID_LIBROS, CANTIDAD, VALOR) VALUES (?,?,?,?)";
    }
    
}
