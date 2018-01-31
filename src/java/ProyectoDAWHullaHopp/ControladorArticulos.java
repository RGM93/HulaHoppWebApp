package ProyectoDAWHullaHopp;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Ruben
 */

@MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*10, 
maxRequestSize=1024*1024*50)
@WebServlet(name = "ControladorArticulos", urlPatterns = {"/Articulos/*"})
public class ControladorArticulos extends HttpServlet {

    @PersistenceContext(unitName = "ProyectoDAWPU")
    private EntityManager em;
    @Resource
    private javax.transaction.UserTransaction utx;
    
    private String getFileName(final Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                    content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = "";
        accion = request.getPathInfo();
        String vista = "";
        HttpSession session = request.getSession();
        switch(accion)
        {
            case "/Alta":
                // Persistir el usuario en BD, vuelve a mostrar el form
                // de alta, mostrando mensaje de estado de operación
                try{
                    String categoria = request.getParameter("categoria");
                    String nombre = request.getParameter("name");
                    String descripcion = request.getParameter("descripcion");
                    String anio = request.getParameter("year");
                    String estado = request.getParameter("estado");
                    int precio = Integer.parseInt(request.getParameter("precio"));
                    Part filePart = request.getPart("imagen");
                    
                    Articulos a = new Articulos();
                    a.setCategoria(categoria);
                    a.setNombre(nombre);
                    a.setDescripcion(descripcion);
                    a.setEstado(estado);
                    a.setAnio(anio);
                    a.setPrecio(precio);
                    
                    String foto = "";
                    String ruta = "/Users/Ruben/Dropbox/0UHU/1er Cuatrimestre/DAW/Trabajo Final Curso/ProyectoDAW/web/images";

                    File file = new File(ruta);
                    file.mkdir();
                    
                    String fileName = getFileName(filePart);

                    OutputStream out = null;
                    InputStream filecontent = null;

                    try 
                    {
                        out = new FileOutputStream(new File(ruta + File.separator + fileName));
                        filecontent = filePart.getInputStream();

                        int read = 0;
                        final byte[] bytes = new byte[1024];

                        while ((read = filecontent.read(bytes)) != -1) 
                        {
                            out.write(bytes, 0, read);
                            foto = fileName;
                        }
                        
                        out.close();
                    } catch (IOException e) {
                        request.setAttribute("msg", "Foto no subida");
                    }
                    
                    a.setFoto(foto);
                    TypedQuery<Usuarios> query = em.createNamedQuery("Usuarios.findById", Usuarios.class);
                    query.setParameter("id", session.getAttribute("id"));

                    List<Usuarios> lu = query.getResultList();
                    Usuarios u;
                    if(!lu.isEmpty())
                    {
                        u = lu.get(0);
                        a.setUsuario(u);
                        persist(a);
                        request.setAttribute("msg", "Articulo publicado");
                    }
                } catch(IOException | ServletException e)
                {
                    request.setAttribute("msg", "Articulo no publicado");
                }
                
                TypedQuery<Articulos> query = em.createNamedQuery("Articulos.findAll", Articulos.class);
                List<Articulos> la = query.getResultList();
                if(!la.isEmpty())
                {
                    if(request.getAttribute("articulos_index") == null)
                    {
                        request.setAttribute("articulos_index", la);
                    }
                }
                vista = "/index.jsp";
                break;
            case "/Articulo":
                TypedQuery<Articulos> query2 = em.createNamedQuery("Articulos.findById", Articulos.class);
                Long idValue = Long.parseLong(request.getParameter("id"));
                query2.setParameter("id", idValue);

                List<Articulos> la2 = query2.getResultList();
                if(!la2.isEmpty())
                {
                    List<Articulos> aux = new ArrayList<>();
                    request.setAttribute("articulo", la2.get(0));
                    if(request.getParameter("favMode").equals("true"))
                    {
                        if(session.getAttribute("favoritos") != null)
                        {
                            aux = (List<Articulos>) session.getAttribute("favoritos");
                            if(!aux.contains(la2.get(0)))
                            {
                                aux.add(la2.get(0));
                                request.setAttribute("add", true);
                            }
                            else
                            {
                                aux.remove(la2.get(0));
                                request.setAttribute("add", null);
                            }
                        }
                        else
                        {
                            aux.add(la2.get(0));
                            request.setAttribute("add", true);
                        } 

                        session.setAttribute("favoritos", aux);
                    }
                    else
                    {
                        if(session.getAttribute("favoritos")!=null)
                        {
                            aux = (List<Articulos>) session.getAttribute("favoritos");
                            if(!aux.contains(la2.get(0)))
                            {
                                request.setAttribute("add", null);
                            }
                            else
                            {
                                request.setAttribute("add", true);
                            }
                        }
                    }
                    TypedQuery<Comentarios> query3 = em.createNamedQuery("Comentarios.findAll", Comentarios.class);
                    List<Comentarios> lc = query3.getResultList();
                    if(!lc.isEmpty())
                    {
                        request.setAttribute("comentarios", lc);
                    }
                    vista = "/articulo.jsp";
                    request.setAttribute("msg", "Articulo tratado");
                }
                break;
            case "/FiltroArticulos":
                TypedQuery<Articulos> query3 = em.createNamedQuery("Articulos.findByCategoria", Articulos.class);
                query3.setParameter("categoria", request.getParameter("categoria"));

                List<Articulos> la3 = query3.getResultList();
                if(!la3.isEmpty())
                {
                    
                    request.setAttribute("categoria", request.getParameter("categoria"));
                    request.setAttribute("articulos", la3);
                    vista = "/articulos.jsp";
                }
                break;
            case "/FiltroArticulos2":
                int precio = Integer.parseInt(request.getParameter("rangoPrecios"));
                String categoria = request.getParameter("categoria");
                String cp = request.getParameter("cp");
                TypedQuery<Articulos> query4;
                if(cp.equals(""))
                {
                    query4 = em.createNamedQuery("Articulos.findByCategoriaAndPrecio", Articulos.class);
                }
                else
                {
                    query4 = em.createNamedQuery("Articulos.findByCategoriaAndPrecioAndCP", Articulos.class);
                    query4.setParameter("cp", cp);
                }
                query4.setParameter("categoria", categoria);
                query4.setParameter("precio", precio);
                

                List<Articulos> la4 = query4.getResultList();
                if(!la4.isEmpty())
                {
                    request.setAttribute("articulos", la4);
                    vista = "/articulos.jsp";
                }
                request.setAttribute("categoria", request.getParameter("categoria"));
                break;
            default:
                vista = "/articulos.jsp";
                break;
        }
        RequestDispatcher rd = request.getRequestDispatcher(vista);
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public void persist(Object object) {
        try {
            utx.begin();
            em.persist(object);
            utx.commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

}
