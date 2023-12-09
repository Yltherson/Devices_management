package com.inventaire.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Authentication {
	public Authentication() {
		super();
	}
	
	
	public boolean validate(Users user) throws SQLException {
//		instanciation de la classe connexion
		ConnexionBD connex = new ConnexionBD();
		Connection con = connex.api();
		
//		requete SQL
		String query = "select * from users where (emailUser = ?) && (password = ?)";
		
		PreparedStatement state = con.prepareStatement(query);
//		initialisation des valeur sql
		state.setString(1, user.getEmail());
		state.setString(2, user.getPassword());
		
		ResultSet res = state.executeQuery();
		
		boolean test = res.next();
		
		if(test) {
			user.setFullName(res.getString("fullName"));
			user.setRole(res.getString("role"));
			return true;
		}
		else {
			return false;
		}
		
	}
}
