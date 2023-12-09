package com.inventaire.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SearchDev {
	
	ConnexionBD con = new ConnexionBD();
	Connection connex = con.api();
	
	public ResultSet search(String code) throws SQLException {
		
		String rq = "select * from products where codeProduct = ?";
		PreparedStatement pst = connex.prepareStatement(rq);
		pst.setString(1, code);
		
		ResultSet result = pst.executeQuery();
		return result;
	}
}
