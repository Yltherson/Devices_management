/**
 * 
 */
package com.inventaire.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * @author Yltherson
 *
 */
public class UsersDAO {
	
	ConnexionBD connex = new ConnexionBD();
	Connection con = connex.api();
	
public void saveUser(Users user) {
	
	String rq = "insert into users(fullName, emailUser, password, role) values(?,?,?,?)";
	
	String name = user.getFullName();
	String mail = user.getEmail();
	String pwd = user.getPassword();
	String role = user.getRole();
	
	try {
		PreparedStatement stm = con.prepareStatement(rq);
		
		stm.setString(1, name);
		stm.setString(2, mail);
		stm.setString(3, pwd);
		stm.setString(4, role);
		
		stm.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	
}
