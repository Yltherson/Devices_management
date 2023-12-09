package com.inventaire.pkg;

public class Users{

	private String fullName;
	private String email;
	private String password;
	private String role;

	
	
	public Users(String fullName, String email, String password, String role) {
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.role = role;
	}



	public String getFullName() {
		return fullName;
	}



	public void setFullName(String fullName) {
		this.fullName = fullName;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}

	public Boolean roleUser( ) {
		
		if(this.getRole().equals("admin")) {
			return true;
		}
		else {
			return false;
		}
	}
	
}
