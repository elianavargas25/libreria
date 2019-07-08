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
import java.util.List;

/**
 *
 * @author ELIANA
 */
public class Manager {
    
    DaoVentas  daoVen;
    DaoLibros daoLib;
    
    public  Manager(){
    daoLib = new DaoLibros();
    daoVen = new DaoVentas();
    }
    
     public List<Libro> buscarLibros(Categoria categoria) {
        return daoLib.listLibros(categoria);
    }//fin buscar
     
     public Ventas registrarVentas(Ventas venta){
     return venta;
     }
}
