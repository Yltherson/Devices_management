package com.inventaire.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeviceDAO {
	ConnexionBD connex = new ConnexionBD();
	Connection con = connex.api();
	
	
	public void saveDevice(Product device) {
		
		String req = "insert into products(codeProduct, type, brand, model, system, storage, cpu, devices, service, location, user, status) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		
		String code = device.getCodeProduct();
		String type = device.getType();
		String brand = device.getBrand();
		String model = device.getModel();
		String system = device.getOperatingSystem();
		String storage = device.getStorage();
		String cpu = device.getProcessor();
		String devices = device.getDevices();
		String service = device.getService();
		String location = device.getLocation();
		String user = device.getUser();
		String status = device.getStatus();
		
		try {
			PreparedStatement stm = con.prepareStatement(req);
			
			stm.setString(1, code);
			stm.setString(2, type);
			stm.setString(3, brand);
			stm.setString(4, model);
			stm.setString(5, system);
			stm.setString(6, storage);
			stm.setString(7, cpu);
			stm.setString(8, devices);
			stm.setString(9, service);
			stm.setString(10, location);
			stm.setString(11, user);
			stm.setString(12, status);
			
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
