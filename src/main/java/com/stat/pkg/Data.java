package com.stat.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.inventaire.pkg.ConnexionBD;

public class Data {
	ConnexionBD con = new ConnexionBD();
	Connection connex = con.api();
	
public int status() throws SQLException {
		String etat = "en service";
		String rq = "select count(*) from products where lower(status) = ?";
		PreparedStatement pst = connex.prepareStatement(rq);
		pst.setString(1, etat);
		
		ResultSet result = pst.executeQuery();
		if(result.next()) {
			int data = result.getInt(1);
			
			return data;
		}
		else {
			return 0;
		}
	}
}
