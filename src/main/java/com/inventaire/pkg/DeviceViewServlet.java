package com.inventaire.pkg;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeviceViewServlet
 */
@WebServlet("/DeviceViewServlet")
public class DeviceViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeviceViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/editDevice.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		Product device = new Product(code, type, brand, model, system, storage, cpu, devices, service, location, user, status);
		
		DeviceUpdate deviceU = new DeviceUpdate();
		try {
			deviceU.updateDevice(device);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		this.getServletContext().getRequestDispatcher("/WEB-INF/editDevice.jsp").forward(request, response);
	}

}
