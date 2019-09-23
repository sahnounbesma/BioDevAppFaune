package RGMarines;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Annimaux_1")
public class Annimaux_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Annimaux_1() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/annimaux_1.jsp").forward(request, response);
	}

}
