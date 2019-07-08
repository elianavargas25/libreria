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
        return "INSERT INTO music.empresa (`ID_TIPO_DOCUMENTO`, `NRO_DOCUMENTO`, `NOMBRE`, `PAGO_OPERACION`, `ID_ESTADO`) "
                + "VALUES (?,?,?,?,?)";
    }
   
   public static String getLibrosByCategoria() {
        return "SELECT ID_EMPRESA,ID_TIPO_DOCUMENTO,NRO_DOCUMENTO,"
               + "NOMBRE,PAGO_OPERACION,ID_ESTADO from music.empresa ";
    }
   
    
}
