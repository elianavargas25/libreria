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
        return "INSERT INTO music.empresa (`ID_TIPO_DOCUMENTO`, `NRO_DOCUMENTO`, `NOMBRE`, `PAGO_OPERACION`, `ID_ESTADO`) "
                + "VALUES (?,?,?,?,?)";
    }
}
