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

/**
 *
 * @author Ruben
 */
@Entity
@NamedQueries({
    @NamedQuery(name="Usuarios.findAll", 
                query="SELECT u FROM Usuarios u"),
    @NamedQuery(name="Usuarios.findByEmail",
                query="SELECT u FROM Usuarios u WHERE u.email = :email"),
    @NamedQuery(name="Usuarios.findByEmailAndPass",
                query="SELECT u FROM Usuarios u WHERE u.email = :email AND u.password = :pwd"),
    @NamedQuery(name="Usuarios.findById",
                query="SELECT u FROM Usuarios u WHERE u.id = :id"),
})
public class Usuarios implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String email, password, name, street, zipcode, facebook, twitter, phone;
    
    @OneToMany(mappedBy="usuario")
    private List<Articulos> articulos;
    
    @OneToMany(mappedBy="usuario_2")
    private List<Comentarios> comentarios;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<Articulos> getArticulos() {
        return articulos;
    }

    public void setArticulos(List<Articulos> articulos) {
        this.articulos = articulos;
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
        if (!(object instanceof Usuarios)) {
            return false;
        }
        Usuarios other = (Usuarios) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ProyectoDAWHullaHopp.Usuarios[ id=" + id + " ]";
    }
    
}
