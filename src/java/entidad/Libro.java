/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

/**
 *
 * @author eliana.vargas
 */
public class Libro {

    private String idLibro;
    private String nombreLibro;
    private Categoria categoria;
    private Editorial editorial;
    private String nroPaginas;
    private String anioPublicacion;
    private String valor;

    private Ubicacion ubicacion;

    public Libro(String idLibro, String nombreLibro, Categoria categoria, Editorial editorial, String nroPaginas, String anioPublicacion, String valor, Ubicacion ubicacion) {
        this.idLibro = idLibro;
        this.nombreLibro = nombreLibro;
        this.categoria = categoria;
        this.editorial = editorial;
        this.nroPaginas = nroPaginas;
        this.anioPublicacion = anioPublicacion;
        this.valor = valor;
        this.ubicacion = ubicacion;
    }

    public Ubicacion getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(Ubicacion ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(String idLibro) {
        this.idLibro = idLibro;
    }

    public String getNombreLibro() {
        return nombreLibro;
    }

    public void setNombreLibro(String nombreLibro) {
        this.nombreLibro = nombreLibro;
    }

    public String getNroPaginas() {
        return nroPaginas;
    }

    public void setNroPaginas(String nroPaginas) {
        this.nroPaginas = nroPaginas;
    }

    public String getAnioPublicacion() {
        return anioPublicacion;
    }

    public void setAnioPublicacion(String anioPublicacion) {
        this.anioPublicacion = anioPublicacion;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public Editorial getEditorial() {
        return editorial;
    }

    public void setEditorial(Editorial editorial) {
        this.editorial = editorial;
    }

}
