package com.inventaire.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeviceUpdate {
	
	ConnexionBD connex = new ConnexionBD();
	Connection con = connex.api();
	
	public void updateDevice(Product device) throws SQLException {
		String rq = "update products"
				+ " set codeProduct = ?, type = ?, brand = ?, model = ?, system = ?, storage = ?, cpu = ?, devices = ?, service = ?, location = ?, user = ?, status = ?"
				+ "  where codeProduct = ?";
		
		PreparedStatement pst = con.prepareStatement(rq);
		
		pst.setString(1, device.getCodeProduct());
		pst.setString(2, device.getType());
		pst.setString(3, device.getBrand());
		pst.setString(4, device.getModel());
		pst.setString(5, device.getOperatingSystem());
		pst.setString(6, device.getStorage());
		pst.setString(7, device.getProcessor());
		pst.setString(8, device.getDevices());
		pst.setString(9, device.getService());
		pst.setString(10, device.getLocation());
		pst.setString(11, device.getUser());
		pst.setString(12, device.getStatus());
		pst.setString(13, device.getCodeProduct());
		
		pst.executeUpdate();
	}
}
