/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProyectoDAWHullaHopp;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author Ruben
 */
@Entity
@NamedQueries({
    @NamedQuery(name="Articulos.findAll", 
                query="SELECT a FROM Articulos a ORDER BY a.id DESC"),
    @NamedQuery(name="Articulos.findById",
                query="SELECT a FROM Articulos a WHERE a.id = :id"),
    @NamedQuery(name="Articulos.findByCategoria",
                query="SELECT a FROM Articulos a WHERE a.categoria = :categoria"),
    @NamedQuery(name="Articulos.findByCategoriaAndPrecio",
                query="SELECT a FROM Articulos a WHERE a.categoria = :categoria AND a.precio >= :precio"),
    @NamedQuery(name="Articulos.findByCategoriaAndPrecioAndCP",
                query="SELECT a FROM Articulos a WHERE a.categoria = :categoria AND a.precio >= :precio AND a.usuario.zipcode = :cp"),
})
public class Articulos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String categoria, nombre, descripcion, estado, anio, foto;
    private int precio;
    
    @OneToOne
    private Usuarios usuario;
    @OneToMany
    private List<Comentarios> comentarios;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public Usuarios getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuarios usuario) {
        this.usuario = usuario;
    }

    public List<Comentarios> getComentarios() {
        return comentarios;
    }

    public void setComentarios(List<Comentarios> comentarios) {
        this.comentarios = comentarios;
    }
    
    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Articulos)) {
            return false;
        }
        Articulos other = (Articulos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ProyectoDAWHullaHopp.Articulos[ id=" + id + " ]";
    }
    
}