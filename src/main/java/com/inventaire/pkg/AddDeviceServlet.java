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
 * Servlet permettant d'ajouter des materiels
 */
@WebServlet("/AddDeviceServlet")
public class AddDeviceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddDeviceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
//		page requsted on servlet loading
//		Page demandée lors du chargement du servlet
		this.getServletContext().getRequestDispatcher("/WEB-INF/deviceAdd.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Retrieving Values from Form Fields
//		recuperation des valeurs dans les champs du forrmulaire
		
		String code = request.getParameter("code");
		String type = request.getParameter("type");
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String system = request.getParameter("system");
		String storage = request.getParameter("storage");
		String cpu = request.getParameter("processor");
		String devices = request.getParameter("devices");
		String service = request.getParameter("service");
		String location = request.getParameter("location");
		String user = request.getParameter("user");
		String status = request.getParameter("status");
		
//		create a random number
//		kreye yon nonb aleyatwa pou code materyel la
		
		int randomNum = (int)(Math.random() * 1001);
		code += randomNum;
		
//		Instantiate a hardware search object
//		instancier un objet recherche materiel
		
		SearchDev searchD = new SearchDev();
		
		try {
			
			ResultSet res = searchD.search(code);
			if(!res.next()) {
				
//				Instantiate a hardware object
				Product device = new Product(code, type, brand, model, system, storage, cpu, devices, service, location, user, status);

				DeviceDAO deviceMap = new DeviceDAO();
				
//				Method for Registering Material
				deviceMap.saveDevice(device);
				
//				returns from the deviceAdd.jsp page
				this.getServletContext().getRequestDispatcher("/WEB-INF/deviceAdd.jsp").forward(request, response);
			}
			else {
				String info = "Ce materiel est deja enregistrer !";
				request.setAttribute("message", info);
				this.getServletContext().getRequestDispatcher("/WEB-INF/deviceAdd.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
