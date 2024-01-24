 package com.Mayur.Education.System.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Mayur.Education.System.Model.Contact;
import com.Mayur.Education.System.Model.Login;
import com.Mayur.Education.System.Model.admin_courses_model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


@Controller
public class LoginController {

	@Autowired
	SessionFactory sf;
	
	@RequestMapping("/")
	public String login() {
		return "login";
	}	
	
	@RequestMapping("/login")
	public String loginDB(Login login,Model model) {
		
		Session ss = sf.openSession();
		Login dblogin = ss.get(Login.class, login.getPassword());// primary key
		
		String page = "login";
		String msg = null;
		if (dblogin != null) { 
			if (login.getUsername().equals(dblogin.getUsername())) {
				page = "home";
			} else {
				msg = "  Invalid Username";
			}
		} else {
			msg = "  Invalid Password";
		}
		model.addAttribute("msg",msg);
		return page;
	}
	
	@RequestMapping("createaccountpage")
	public String createaccountpage() {
		return "createaccount";
		
	}
	
	@RequestMapping("/createaccount")
	public Login createaccountpageSave(Login bb) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(bb);
		t.commit();
		return bb;//login
	}
	
	@RequestMapping("homePage")
	public String homepage() {
		return "home";
	}
	
	@RequestMapping("aboutpage")
	public String aboutpage() {
		return "about";
	}
	
	@RequestMapping("contactpage")
	public String contactpage() {
		return "contact";
	}
	
	@RequestMapping("/contact")
	public Contact createaccountpageSave(Contact contact) {
		Session s=sf.openSession();
		Transaction t =s.beginTransaction();
		s.save(contact);
		t.commit();
		return contact;
	}
	
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("coursepage")
	public String coursepage(Model model) {
		List<admin_courses_model> listUsers = service.listAll();
		model.addAttribute("listUsers",listUsers);
		return "course";
	}
	
	@RequestMapping("/loginpage")
	public String loginpage() {
		return "login";
	}
	
	
}

