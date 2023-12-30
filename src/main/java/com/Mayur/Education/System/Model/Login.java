package com.Mayur.Education.System.Model;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Login {

	private String username;
	@Id
	private String password;
	
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Login(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Login [username=" + username + ", password=" + password + "]";
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}

