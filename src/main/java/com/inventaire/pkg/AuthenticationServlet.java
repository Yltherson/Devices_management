package com.inventaire.pkg;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AuthenticationServlet
 */
@WebServlet("/AuthenticationServlet")
public class AuthenticationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenticationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/HTML");
		response.setCharacterEncoding("UTF-8");
		
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String fullName = "";
		String role = "";
		
		Users user = new Users(fullName, email, pwd, role);
		
		Authentication auth = new Authentication();
		try {
			// test authentification de l'utilisateur
			if(auth.validate(user)) {
//				pass si les coordonner
				if(user.roleUser()) {
					this.getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
				}
				else {
					this.getServletContext().getRequestDispatcher("/WEB-INF/user.jsp").forward(request, response);
				}
			}
			else {
				String info = "Cet utilisateur n'existe pas dans le systeme !";
				request.setAttribute("message", info);
				
				this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			}
		} catch (SQLException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
