package RGMarines;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Embranchement")
public class Embranchement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Embranchement() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String i = request.getParameter("embr");
		System.out.println("l'embranchement est : "+i);
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/embranchement.jsp").forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String i = request.getParameter("embr");
		System.out.println("l'embranchement est : "+i);
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/embranchement.jsp").forward(request, response);
	}
}
