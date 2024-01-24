package com.Mayur.Education.System.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class admin_login_model {

	@Id
	String admin_name;
	int password;
	
	public admin_login_model() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public admin_login_model(String admin_name, int password) {
		super();
		this.admin_name = admin_name;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "admin_login_model [admin_name=" + admin_name + ", password=" + password + "]";
	}
	
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	
}
