package com.inventaire.pkg;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnexionBD {
	
	public Connection api(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
//        System.out.println("Driver Ok!");
            
        String url = "jdbc:mysql://localhost:3306/inventaire";
        
        String user = "root";
        
        String password = "";
            
        Connection con = null;
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger.getLogger(ConnexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
//        System.out.println("True");
        return con;
    }
}
