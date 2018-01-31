package ProyectoDAWHullaHopp;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

/**
 *
 * @author Ruben
 */
@WebServlet(name = "ControladorUsuarios", urlPatterns = {"/Usuarios/*"})
public class ControladorUsuarios extends HttpServlet {

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
            throws ServletException, IOException, NoSuchAlgorithmException {
        
        String accion = "";
        accion = request.getPathInfo();
        String vista = "";
        HttpSession session = request.getSession();
        boolean verificaEmail = false;
        boolean encontrado = false;
        switch(accion)
        {
            case "/verificarEmail":
                TypedQuery<Usuarios> queryVerificar = em.createNamedQuery("Usuarios.findByEmail", Usuarios.class);
                queryVerificar.setParameter("email", request.getParameter("email"));
                List<Usuarios> luVerificar;
                luVerificar = queryVerificar.getResultList();
                if(!luVerificar.isEmpty())
                {
                    request.setAttribute("emailvalido", "No");
                    //request.setAttribute("msg", "Existe");
                } else {
                    
                    //vista = "/alta.jsp";
                    request.setAttribute("emailvalido", "Si");
                    encontrado = true;
                    //request.setAttribute("msg", "No Existe.");
                }
                vista = "/alta.jsp";
                verificaEmail = true;
                break;
            case "/comprobarEmail":
                TypedQuery<Usuarios> queryComprobar = em.createNamedQuery("Usuarios.findByEmail", Usuarios.class);
                queryComprobar.setParameter("email", request.getParameter("email"));
                List<Usuarios> luComprobar;
                luComprobar = queryComprobar.getResultList();
                if(!luComprobar.isEmpty())
                {
                    request.setAttribute("emailvalido", "Si");
                    encontrado = true;
                    //request.setAttribute("msg", "Existe");
                } else {
                    
                    //vista = "/alta.jsp";
                    request.setAttribute("emailvalido", "No");
                    //request.setAttribute("msg", "No Existe.");
                }
                vista = "/alta.jsp";
                verificaEmail = true;
                break;
            case "/comprobarPassword":
                String pass = request.getParameter("pwd");
                MessageDigest mdP = MessageDigest.getInstance("MD5");
                mdP.update(pass.getBytes());
                byte[] digestP = mdP.digest();
                StringBuilder sbP = new StringBuilder();

                for (byte b: digestP) {
                    sbP.append(String.format("%02x", b & 0xff));
                }

                String password_digest_P = sbP.toString();
                
                TypedQuery<Usuarios> queryPassword = em.createNamedQuery("Usuarios.findByEmailAndPass", Usuarios.class);
                String emailP = (String) session.getAttribute("email");
                queryPassword.setParameter("email", emailP);
                queryPassword.setParameter("pwd", password_digest_P);
                List<Usuarios> luPassword;
                luPassword = queryPassword.getResultList();
                if(!luPassword.isEmpty())
                {
                    request.setAttribute("emailvalido", "Si");
                    encontrado = true;
                    //request.setAttribute("msg", "Existe");
                } else {
                    
                    //vista = "/alta.jsp";
                    request.setAttribute("emailvalido", "No");
                    //request.setAttribute("msg", "No Existe.");
                }
                vista = "/alta.jsp";
                verificaEmail = true;
                break;
            case "/Alta":
                // Persistir el usuario en BD, vuelve a mostrar el form
                // de alta, mostrando mensaje de estado de operación
                try{
                    
                    String email = request.getParameter("email");
                    TypedQuery<Usuarios> queryEmail = em.createNamedQuery("Usuarios.findByEmail", Usuarios.class);
                    queryEmail.setParameter("email", email);
                    List<Usuarios> luEmail = queryEmail.getResultList();
                    if(luEmail.isEmpty())
                    {
                        String password = request.getParameter("password");

                        MessageDigest md = MessageDigest.getInstance("MD5");
                        md.update(password.getBytes());
                        byte[] digest = md.digest();
                        StringBuilder sb = new StringBuilder();

                        for (byte b: digest) {
                            sb.append(String.format("%02x", b & 0xff));
                        }

                        String password_digest = sb.toString();
                        String nombre = request.getParameter("name");
                        String direccion = request.getParameter("street");
                        String cp = request.getParameter("zipcode");
                        String fb = request.getParameter("facebook");
                        String tw = request.getParameter("twitter");
                        String telefono = request.getParameter("phone");

                        String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
                        boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);

                        Usuarios u = new Usuarios();
                        u.setEmail(email);
                        u.setPassword(password_digest);
                        u.setName(nombre);
                        u.setStreet(direccion);
                        u.setZipcode(cp);
                        u.setFacebook(fb);
                        u.setTwitter(tw);
                        u.setPhone(telefono);

                        if(verify)
                        {
                            persist(u);
                            session.setAttribute("id", u.getId());
                            session.setAttribute("user", u.getName());
                            request.setAttribute("msg", "Usuario guardado");
                            vista = "/index.jsp";
                        }
                        else
                        {
                            vista = "/alta.jsp";
                            request.setAttribute("msg", "Captcha no realizado.");
                        }
                    } else {
                        vista = "/alta.jsp";
                    }
                } catch(Exception e)
                {
                    request.setAttribute("msg", "Usuario no guardado");
                }
                break;
                
            case "/IniciarSesion":
                try{
                    String email = request.getParameter("email");
                    String password = request.getParameter("password");

                    MessageDigest md = MessageDigest.getInstance("MD5");
                    md.update(password.getBytes());
                    byte[] digest = md.digest();
                    StringBuilder sb = new StringBuilder();

                    for (byte b: digest) {
                        sb.append(String.format("%02x", b & 0xff));
                    }

                    String password_digest = sb.toString();

                    TypedQuery<Usuarios> query = em.createNamedQuery("Usuarios.findByEmailAndPass", Usuarios.class);
                    query.setParameter("email", email);
                    query.setParameter("pwd", password_digest);

                    List<Usuarios> lu = query.getResultList();
                    if(!lu.isEmpty())
                    {
                        Usuarios u = lu.get(0);
                        session.setAttribute("id", u.getId());
                        session.setAttribute("user", u.getName());
                        request.setAttribute("msg", "Login correcto");
                        vista = "/index.jsp";
                    } else {
                        vista = "/acceder.jsp";
                        request.setAttribute("msg", "Usuario o contraseña incorrecto.");
                    }
                } catch(Exception e)
                {
                    System.err.println(e);
                    request.setAttribute("msg", "Error: Imposible validar al usuario.");
                }
                break;
            case "/RecuperarPassword":
                try{
                    String email = request.getParameter("email");

                    TypedQuery<Usuarios> query = em.createNamedQuery("Usuarios.findByEmail", Usuarios.class);
                    query.setParameter("email", email);

                    List<Usuarios> lu = query.getResultList();
                    if(!lu.isEmpty())
                    {
                        session.setAttribute("email", email);
                        vista = "/recuperarPassword2.jsp";
                    } else {
                        vista = "/recuperarPassword.jsp";
                    }
                } catch(Exception e)
                {
                    System.err.println(e);
                    request.setAttribute("msg", "Error: Imposible validar al usuario.");
                }
                break;
            case "/RecuperarPassword2":
                try{
                    String email = (String) session.getAttribute("email");
                    String oldPassword = request.getParameter("oldPassword");
                    String newPassword = request.getParameter("newPassword");
                    
                    MessageDigest mdNew = MessageDigest.getInstance("MD5");
                    mdNew.update(newPassword.getBytes());
                    byte[] digestNew = mdNew.digest();
                    StringBuilder sbNew = new StringBuilder();

                    for (byte b: digestNew) {
                        sbNew.append(String.format("%02x", b & 0xff));
                    }

                    String password_digest_new = sbNew.toString();
                    
                    MessageDigest mdOld = MessageDigest.getInstance("MD5");
                    mdOld.update(oldPassword.getBytes());
                    byte[] digestOld = mdOld.digest();
                    StringBuilder sbOld = new StringBuilder();

                    for (byte b: digestOld) {
                        sbOld.append(String.format("%02x", b & 0xff));
                    }

                    String password_digest_old = sbOld.toString();

                    TypedQuery<Usuarios> queryRec = em.createNamedQuery("Usuarios.findByEmailAndPass", Usuarios.class);
                    queryRec.setParameter("email", email);
                    queryRec.setParameter("pwd", password_digest_old);

                    List<Usuarios> luRec = queryRec.getResultList();
                    if(!luRec.isEmpty())
                    {
                        if(!password_digest_old.equals(password_digest_new))
                        {
                            
                            
                            //TypedQuery<Usuarios> queryRec = em.createNamedQuery("Usuarios.updatePass", Usuarios.class);
                            Usuarios u = luRec.get(0);
                            u.setPassword(password_digest_new);
                            merge(u);
                            session.invalidate();
                            vista = "/acceder.jsp";
                        }
                        else
                        {
                            vista = "/recuperarPassword2.jsp";
                        }
                    } else {
                        vista = "/recuperarPassword2.jsp";
                    }
                } catch(Exception e)
                {
                    System.err.println(e);
                    request.setAttribute("msg", "Error: Imposible validar al usuario.");
                }
                break;
            case "/CerrarSesion":
                session.invalidate();
                request.setAttribute("articulos_index", null);
                request.setAttribute("msg", "Usuario desconectado");
                vista = "/index.jsp";
            default:
                //vista = "/index.jsp";
                break;
        
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
        if(verificaEmail)
        {
            if(encontrado) response.getWriter().write("verify");
            else response.getWriter().write("false");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher(vista);
            rd.forward(request, response);    
        }
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ControladorUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ControladorUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        } catch (IllegalStateException | SecurityException | HeuristicMixedException | HeuristicRollbackException | NotSupportedException | RollbackException | SystemException e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

    public void merge(Object object) {
        try {
            utx.begin();
            em.merge(object);
            utx.commit();
        } catch (IllegalStateException | SecurityException | HeuristicMixedException | HeuristicRollbackException | NotSupportedException | RollbackException | SystemException e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

}
