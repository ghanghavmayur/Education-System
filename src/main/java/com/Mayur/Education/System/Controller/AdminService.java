package com.Mayur.Education.System.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Mayur.Education.System.Model.admin_courses_model;

@Service
public class AdminService {
@Autowired private AdminRepository repo;
	
	public List<admin_courses_model> listAll(){
		return (List<admin_courses_model>) repo.findAll(); 
	}

	public void save(admin_courses_model admin) {
		repo.save(admin);		
	}
	
	public admin_courses_model get(Integer course_id) {
	    Optional<admin_courses_model> result = repo.findById(course_id);
	    return result.orElseThrow(() -> new AdminNotFoundException("Could not find any users with ID " +course_id ));
	}
	
	public void delete(int course_id) {
		Long count = repo.countById(course_id);
		if (count == null  || count == 0) {
		    throw new AdminNotFoundException("Could not find any users with ID " + course_id);

		}
		repo.deleteById(course_id);
	}
}
