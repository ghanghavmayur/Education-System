package com.Mayur.Education.System.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class admin_courses_model {

	@Id
	int course_id;
	String course_name;
	String provider;
	
	public admin_courses_model() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public admin_courses_model(int course_id, String course_name, String provider) {
		super();
		this.course_id = course_id;
		this.course_name = course_name;
		this.provider = provider;
	}
	
	@Override
	public String toString() {
		return "admin_courses_model [course_id=" + course_id + ", course_name=" + course_name + ", provider=" + provider
				+ "]";
	}
	
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getProvider() {
		return provider;
	}
	public void setProvider(String provider) {
		this.provider = provider;
	}
	
	
	
}
