/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProyectoDAWHullaHopp;

import java.io.IOException;
import java.security.MessageDigest;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ruben
 */
@WebServlet(name = "ControladorComentarios", urlPatterns = {"/Comentarios/*"})
public class ControladorComentarios extends HttpServlet {

    @PersistenceContext(unitName = "ProyectoDAWPU")
    private EntityManager em;
    @Resource
    private javax.transaction.UserTransaction utx;

    
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
            case "/Comentar":
                try{
                    String visible = request.getParameter("visible");
                    String comentario = request.getParameter("comentario");
                
                    Comentarios c = new Comentarios();
                    c.setPrivacidad(visible);
                    c.setTexto(comentario);
                    
                    TypedQuery<Usuarios> query = em.createNamedQuery("Usuarios.findById", Usuarios.class);
                    query.setParameter("id", session.getAttribute("id"));

                    List<Usuarios> lu = query.getResultList();
                    if(!lu.isEmpty())
                    {
                        c.setUsuario_2(lu.get(0));
                    }
                    
                    TypedQuery<Articulos> query2 = em.createNamedQuery("Articulos.findById", Articulos.class);
                    Long idValue = Long.parseLong(request.getParameter("id"));
                    query2.setParameter("id", idValue);

                    List<Articulos> la = query2.getResultList();
                    if(!la.isEmpty())
                    {
                        c.setArticulo(la.get(0));
                    }
                    
                    persist(c);
                    request.setAttribute("msg", "Comentario publicado");
                    request.setAttribute("articulo", la.get(0));
                    TypedQuery<Comentarios> query3 = em.createNamedQuery("Comentarios.findAll", Comentarios.class);
                    List<Comentarios> lc = query3.getResultList();
                    if(!lc.isEmpty())
                    {
                        request.setAttribute("comentarios", lc);
                    }
                    
                } catch(Exception e)
                {
                    request.setAttribute("msg", "Comentario no guardado");
                }
                vista = "/articulo.jsp";
                break;
                
            default:
                vista = "/articulo.jsp";
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
