package Common;

import java.io.IOException;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entities.Utilisateur;
import Users.connexionForm;


@WebServlet("/connexion")
public class connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;  
       
    public connexion() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher( "/WEB-INF/JSP/Common/connexion.jsp"
				).forward( request, response );  
	} 


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		connexionForm form = new connexionForm();
		String nomUtilisateur = connexionForm.getValeurChamp(request,"username");
		String motDePasse = connexionForm.getValeurChamp(request,"password");
		Utilisateur user;
		HttpSession session;
		String IdSession;
		String prenomNom;
		try {
			user = form.connecterUtilisateur(nomUtilisateur, motDePasse);
			session = request.getSession();
			IdSession = session.getId();
			if (form.getErreurs().isEmpty()) {
				session.setAttribute(IdSession, user); 
				prenomNom = user.getPrenom()+" "+user.getNom();
				session.setAttribute("prenomNom", prenomNom);
				response.sendRedirect( request.getContextPath() +
						"/rgfaune" );
			} 
			else {
				System.out.println("je suis ici");
				session.setAttribute(IdSession, null);
				request.setAttribute("erreurs", form.getErreurs());
				for(Entry<String, String> entry : form.getErreurs().entrySet()) {
				    String cle = entry.getKey();
				    String valeur = entry.getValue();
				    System.out.println(cle + " : " + valeur); 
				}
				this.getServletContext().getRequestDispatcher( "/WEB-INF/JSP/Common/connexion.jsp"
						).forward( request, response );
			}
			
		} catch (Exception e) { 
			e.getStackTrace();
		}
		//doGet(request, response);
	}

}
