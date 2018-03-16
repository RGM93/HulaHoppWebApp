package ProyectoDAWHullaHopp;

import ProyectoDAWHullaHopp.Articulos;
import ProyectoDAWHullaHopp.Usuarios;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-02-03T20:14:11")
@StaticMetamodel(Comentarios.class)
public class Comentarios_ { 

    public static volatile SingularAttribute<Comentarios, String> texto;
    public static volatile SingularAttribute<Comentarios, Usuarios> usuario_2;
    public static volatile SingularAttribute<Comentarios, Long> id;
    public static volatile SingularAttribute<Comentarios, Articulos> articulo;
    public static volatile SingularAttribute<Comentarios, String> privacidad;

}