/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manager;

import persistencia.DaoLibros;
import persistencia.DaoVentas;
import entidad.Categoria;
import entidad.Libro;
import entidad.Ventas;
import entidad.VentasLibros;
import java.sql.Connection;
import java.util.List;
import persistencia.DaoCategorias;
import persistencia.DaoVentasLibros;
import utilidades.Conexion;

/**
 *
 * @author ELIANA
 */
public class Manager {

    DaoVentas daoVen;
    DaoLibros daoLib;
    DaoVentasLibros daoVenLib;
    DaoCategorias daoCat;

    public Manager() {
        daoLib = new DaoLibros();
        daoVen = new DaoVentas();
        daoVenLib = new DaoVentasLibros();
        daoCat = new  DaoCategorias();
    }

    public List<Libro> listarLibros(String categoria) {
        return daoLib.listLibrosByCategoria(categoria);
    }//fin buscar
    
    public List<Libro> getLibros(String idLibros) {
        return daoLib.getLibros(idLibros);
    }

    public Ventas registrarVentas(Ventas venta) {
        Connection conn = Conexion.getInstance();
        daoVen = new DaoVentas(conn);
        daoLib = new DaoLibros(conn);
        daoVen.saveVentas(venta);
        for (VentasLibros listVenta : venta.getListVentas()) {
            listVenta.setVentas(venta);
            daoVenLib.saveVentas(listVenta);
        }
        Conexion.close(conn);
        return venta;
    }
    
    public List<Categoria> listarCategorias() {
        return daoCat.listCategoria();
    }//fin public lista
}
