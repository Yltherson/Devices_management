package com.inventaire.pkg;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeviceDeleteServlet
 */
@WebServlet("/DeviceDeleteServlet")
public class DeviceDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeviceDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/deleteDevice.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codeProduct = request.getParameter("codeProduct");
		
		DeleteDevice del = new DeleteDevice();
		SearchDev searchD = new SearchDev();
		
		try {
			ResultSet res = searchD.search(codeProduct);
			if(!res.next()) {
				String info = "Aucun materiel supprimer !";
				request.setAttribute("message", info);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/deleteDevice.jsp").forward(request, response);
			}
			else {
				del.deleteDevice(codeProduct);
				String info = "1 materiel supprimer !";
				request.setAttribute("message", info);
				this.getServletContext().getRequestDispatcher("/WEB-INF/deleteDevice.jsp").forward(request, response);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
