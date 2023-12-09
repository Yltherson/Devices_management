package com.inventaire.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteDevice {
	ConnexionBD connex = new ConnexionBD();
	Connection con = connex.api();
	
	public void deleteDevice(String code) throws SQLException {
		String rq = "DELETE FROM PRODUCTS where codeProduct = ?";
		
		PreparedStatement pst = con.prepareStatement(rq);
		
		pst.setString(1, code);
		pst.executeUpdate();
	}
	
}
