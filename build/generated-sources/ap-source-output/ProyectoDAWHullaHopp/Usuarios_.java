package ProyectoDAWHullaHopp;

import ProyectoDAWHullaHopp.Articulos;
import ProyectoDAWHullaHopp.Comentarios;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-02-03T20:14:11")
@StaticMetamodel(Usuarios.class)
public class Usuarios_ { 

    public static volatile SingularAttribute<Usuarios, String> zipcode;
    public static volatile SingularAttribute<Usuarios, String> password;
    public static volatile SingularAttribute<Usuarios, String> twitter;
    public static volatile SingularAttribute<Usuarios, String> phone;
    public static volatile ListAttribute<Usuarios, Articulos> articulos;
    public static volatile SingularAttribute<Usuarios, String> street;
    public static volatile SingularAttribute<Usuarios, String> facebook;
    public static volatile SingularAttribute<Usuarios, String> name;
    public static volatile SingularAttribute<Usuarios, Long> id;
    public static volatile ListAttribute<Usuarios, Comentarios> comentarios;
    public static volatile SingularAttribute<Usuarios, String> email;

}