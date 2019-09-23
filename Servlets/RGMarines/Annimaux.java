package RGMarines;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Annimaux")
public class Annimaux extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Annimaux() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("order", "okkkkkkk!");
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/annimaux.jsp").forward(request, response);
	}

}
