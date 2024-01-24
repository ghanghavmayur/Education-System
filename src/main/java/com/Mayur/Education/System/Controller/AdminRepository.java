package com.Mayur.Education.System.Controller;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.Mayur.Education.System.Model.admin_courses_model;


//public interface AdminRepository extends CrudRepository<admin_courses_model, Integer> {
//	public Long countById(Integer course_id);
//}

public interface AdminRepository extends CrudRepository<admin_courses_model, Integer> {
    @Query("SELECT COUNT(a) FROM admin_courses_model a WHERE a.id = :courseId")
    Long countById(@Param("courseId") Integer course_id);
}

