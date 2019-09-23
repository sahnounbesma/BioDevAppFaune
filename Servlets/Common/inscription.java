package Common;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connexion.ConnexionSimpleUser;
import Entities.Utilisateur;
import Users.UtilisateurDAOImpSimple;
import Users.connexionForm;
import Users.inscriptionFormUser;

/**
 * Servlet implementation class connexion
 */
@WebServlet("/inscription")
public class inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String ATT_USER = "utilisateur";
	public static final String ATT_FORM = "form";
	public static final String ATT_SESSION_USER ="sessionUtilisateur";
	public static final String VUE = "/WEB-INF/JSP/Common/InscirptionUtilsateur.jsp";
    public inscription() {
        super(); 
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("dakhel get");
		//UtilisateurDAOImpSimple dao = new UtilisateurDAOImpSimple();
		//if (dao.getEm1()==null) {System.out.println("hya lkalba !");}
		//System.out.println("jazzzzzzzzz!!!!!!!!!! oueeeeeeeey");
		this.getServletContext().getRequestDispatcher( VUE).forward( request, response );   

       
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		try {
				System.out.println("date de naissance :" + request.getParameter("email"));
				inscriptionFormUser form = new inscriptionFormUser();  
				Utilisateur user= form.creerUtilisateur(request);
				UtilisateurDAOImpSimple dao = new UtilisateurDAOImpSimple();
				if (!form.getErreurs().isEmpty()) {    
					for (Map.Entry mapentry : form.getErreurs().entrySet()) {
			           System.out.println("clic: "+mapentry.getKey() 
                       + " | valeur: " + mapentry.getValue());
						}}
				request.setAttribute(ATT_FORM, form);
				request.setAttribute(ATT_USER, user);
				dao.getEm1().getTransaction().begin();
				dao.ajouterUtilisateur(user);
				System.err.println("j'ai rajouté l'utilisateur");
				dao.getEm1().getTransaction().commit();
				dao.getEm1().close(); 
			} catch (Exception e) {
				e.getStackTrace(); 
			}
			
			this.getServletContext().getRequestDispatcher(VUE).forward( request, response );	
		//doGet(request, response);;;
	}

}
