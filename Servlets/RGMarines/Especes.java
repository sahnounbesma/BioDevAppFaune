package RGMarines;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Especes")
public class Especes extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Especes() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String i = request.getParameter("categ");
		System.out.println("la catégorie est : "+i);
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/especes.jsp").forward(request, response);
	}

}
