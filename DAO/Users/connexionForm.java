package Users;

import javax.servlet.http.HttpServletRequest;

import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import Entities.Utilisateur;

import java.util.HashMap;
import java.util.Map;

public class connexionForm {
	private static final String CHAMP_EMAIL = "email";
	private static final String CHAMP_PASS = "motdepasse";
	private String resultat;
	private Map<String, String> erreurs = new HashMap<String,String>();
	//******************************    M�thode de validation ******************************************/
	                  //Validation de l'adresse Mail : si la forme ne correspond pas � une celle d'un courriel un msg est retourn�
	protected void validationEmail( String email ) throws Exception {
		if ( email != null && !email.matches(
		"([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
		throw new Exception( "Merci de saisir une adresse mail valide." );
		
															}
		else if (email == null) {
			throw new Exception( "Merci de saisir une adresse mail ." );
		}
																		}
					// Validation de mot de passe : si le mot de passe est trop court ou encore vide, un msg est retourn�
	protected void validationMotDePasse( String motDePasse ) throws Exception {
		if ( motDePasse != null ) {
			if ( motDePasse.length() < 3 ) {
					throw new Exception( "Le mot de passe doit contenir au moins 3 caract�res." );
											}
									} 
			else {
					throw new Exception( "Merci de saisir un mot de passe." );
					}
																				}
				/* Ajoute un message correspondant au champ sp�cifi� � la map des erreurs.*/
	private void setErreur( String champ, String message ) {
		erreurs.put( champ, message );
		}
	
			// retourne une instance d'utilisateur si les informations fournis sont correctes
	public Utilisateur connecterUtilisateur(String courriel,String Motdepasse ) {
			/* R�cup�ration des champs du formulaire */
			String email = courriel; //getValeurChamp( request, CHAMP_EMAIL );
			String motDePasse =Motdepasse; //getValeurChamp( request, CHAMP_PASS );
			Utilisateur utilisateur = new Utilisateur();
			/* Validation du champ email. */
			try {
				validationEmail( email );
				utilisateur = verifExistUserFile(email);
					} 
			catch ( Exception e ) {
				setErreur( CHAMP_EMAIL, e.getMessage() );
					}
			//utilisateur.setCourriel(email);
			/* Validation du champ mot de passe. */
			try {
				validationMotDePasse( motDePasse );		
				verifMotDePasse(motDePasse, utilisateur.getMotDePasse());
			} catch ( Exception e ) {
				setErreur( CHAMP_PASS, e.getMessage() );
			}
				//utilisateur.setMotDePasse( motDePasse );
		
			/* Initialisation du r�sultat global de la validation. */
			if ( erreurs.isEmpty() ) {
				resultat = "Succès de la connexion.";
			} else {
				resultat = "Echec de la cnx";
					}
				return utilisateur;
			}
	public static String getValeurChamp( HttpServletRequest
			request, String nomChamp ) {
			String valeur = request.getParameter( nomChamp );
			if ( valeur == null || valeur.trim().length() == 0 ) {
			return "-1";
			} else {
			return valeur;
			}
			}
	
	public Map<String, String> getErreurs() {
		// TODO Auto-generated method stub
		return erreurs;
	}
	private Utilisateur verifExistUserFile (String courriel) throws Exception {
		//System.out.println("je teste est ce que �a existe");
		UtilisateurDAOImpSimple dao = new UtilisateurDAOImpSimple();
		//if (dao.getEm1() == null) {System.out.println("hya");}
		dao.getEm1().getTransaction().begin(); 
		//System.out.println("j'ai cr�e le dao");
		Utilisateur utilisateur = dao.trouverUtilisateur(courriel);
		//System.out.println(utilisateur.getMotDePasse()); 
		dao.getEm1().close();
		if (utilisateur == null) {throw new Exception ("Identifiant n'existe pas !");}
		return utilisateur;
		
		}
	private void verifMotDePasse (String motDePasseEntre,String motDePasseUtilisateurRetourne) throws Exception {
		 ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
		 boolean isok = passwordEncryptor.checkPassword(motDePasseEntre, motDePasseUtilisateurRetourne);
			if (!isok) {throw new Exception ("mot de passe invalide !");}
		}
		
	}

