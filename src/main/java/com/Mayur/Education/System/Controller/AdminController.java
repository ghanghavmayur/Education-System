package com.Mayur.Education.System.Controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Mayur.Education.System.Model.admin_courses_model;
import com.Mayur.Education.System.Model.admin_login_model;


@Controller
public class AdminController {

    @Autowired
    SessionFactory sf;

    @RequestMapping("admin")
    public String adminLoginPage() {
        return "adminlogin";
    }

    @RequestMapping("adminlogin")
    public String adminLoginCheck(admin_login_model adminModel, Model model) {
        Session session = sf.openSession();
        admin_login_model dbAdmin = session.get(admin_login_model.class, adminModel.getAdmin_name()); //primry key

        String page = "adminlogin";
        String msg = null;
        if (dbAdmin != null) {
            if (adminModel.getAdmin_name().equals(dbAdmin.getAdmin_name())
                    && adminModel.getPassword() == dbAdmin.getPassword()) {
                page = "redirect:/admin/courses"; // Redirect to home page on successful login
            } else {
                msg = "Invalid Credentials";
            }
        } else {
            msg = "Invalid Admin Name";
        }
        model.addAttribute("msg", msg);
        return page;
    }

    @Autowired 
    private AdminService service;
    
    @GetMapping("/admin/courses")
	public String showUserList(Model model) {
		List<admin_courses_model> listUsers = service.listAll();
		model.addAttribute("listUsers",listUsers);
		
		return "adminpanel";
	}
    
	@PostMapping("/admin/save")
	public String saveUser(@ModelAttribute("admin") admin_courses_model admin) {
	    // No need to handle the checkbox value manually, Spring will bind it to the boolean field
	    service.save(admin);
	    System.err.println("saved");
	    return "redirect:/admin/courses";
	}
    
    @GetMapping("/admin/add")
	public String showNewForm(Model model) {
		model.addAttribute("admin_courses_model",new admin_courses_model());
		model.addAttribute("pageTitle","Add New Courses");
		System.err.println("new Form");
		return "adminadd_form";
	}
    
    @GetMapping("/admin/edit/{id}")
	public String showEditForm(@PathVariable("id") Integer course_id, Model model, RedirectAttributes ra){
		try {
			admin_courses_model admin = service.get(course_id);
			model.addAttribute("admin", admin);
			model.addAttribute("pageTitle","Edit User(ID:" + course_id + ")");
			System.err.println("updating form");
			return "adminupdate_form";
		}catch (AdminNotFoundException e) {
			ra.addFlashAttribute("message","The user has been saved successfully");
			return "redirect:/admin/courses"; 
		}
	
	}
    
    @GetMapping("/admin/delete/{id}")
	public String deleteUser(@PathVariable("id") Integer course_id, RedirectAttributes ra){
		try {
			
			service.delete(course_id);
		
		}catch (AdminNotFoundException e) {
			
			ra.addFlashAttribute("message", e.getMessage());
			
		}
		return "redirect:/admin/courses"; 
	
	}
    
    @RequestMapping("/adlogin")
    public String returnLogin() {
    	System.err.println("areturn logout");
    	return "adminlogin";
    }
    
}




