package com.inventaire.pkg;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddUsers
 */
@WebServlet("/AddUsers")
public class AddUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/userAdd.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String role = request.getParameter("role");
		
		Users user = new Users(fullName, email, pwd, role);
		Authentication auth = new Authentication();
		
		try {
			if(auth.validate(user)) {
				
				String info = "Cet utilisateur est deja enregistrer !";
				request.setAttribute("message", info);
				this.getServletContext().getRequestDispatcher("/WEB-INF/userAdd.jsp").forward(request, response);
			}
			else {
				
				UsersDAO UserMap = new UsersDAO();
				UserMap.saveUser(user);
				
				String info = "Utilisateur ajouter avec succes !";
				request.setAttribute("message", info);
				this.getServletContext().getRequestDispatcher("/WEB-INF/userAdd.jsp").forward(request, response);
			}
		} catch (SQLException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
//		this.getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
	}

}
