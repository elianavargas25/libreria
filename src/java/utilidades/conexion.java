package utilidades;

import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class conexion {

    private static Connection conn;

    public static Connection getInstance() {
        if (conn == null) {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                String servidor = "jdbc:oracle:thin:@" + "127.0.0.1" + ":" + "1521" + ":" + "XE";
                conn = DriverManager.getConnection(servidor, "US_BIBLIOTECA", "123");
            } catch (SQLException ex) {
                Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
            } catch (InstantiationException ex) {
                Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IllegalAccessException ex) {
                Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return conn;
    }

    public static void main(String[] args) {

        Connection conn = conexion.getInstance();
        try {
            PreparedStatement ObjState = conn.prepareCall("SELECT * FROM SEXOS");
            ResultSet ObjResult = ObjState.executeQuery();

            while (ObjResult.next()) {
                System.out.println("Dato: " + ObjResult.getString(2));
            }
        } catch (SQLException e) {
            System.out.println("err in main: " + e);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

}
