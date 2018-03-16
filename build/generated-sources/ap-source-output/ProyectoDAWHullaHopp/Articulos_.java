package ProyectoDAWHullaHopp;

import ProyectoDAWHullaHopp.Comentarios;
import ProyectoDAWHullaHopp.Usuarios;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-02-03T20:14:11")
@StaticMetamodel(Articulos.class)
public class Articulos_ { 

    public static volatile SingularAttribute<Articulos, String> descripcion;
    public static volatile SingularAttribute<Articulos, String> estado;
    public static volatile SingularAttribute<Articulos, Integer> precio;
    public static volatile SingularAttribute<Articulos, String> foto;
    public static volatile SingularAttribute<Articulos, String> categoria;
    public static volatile SingularAttribute<Articulos, Usuarios> usuario;
    public static volatile SingularAttribute<Articulos, Long> id;
    public static volatile SingularAttribute<Articulos, String> nombre;
    public static volatile ListAttribute<Articulos, Comentarios> comentarios;
    public static volatile SingularAttribute<Articulos, String> anio;

}