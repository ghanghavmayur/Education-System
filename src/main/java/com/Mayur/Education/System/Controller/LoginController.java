 package com.Mayur.Education.System.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Mayur.Education.System.Model.Contact;
import com.Mayur.Education.System.Model.Login;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


@Controller
public class LoginController {

	@Autowired
	SessionFactory sf;
	
	@RequestMapping("/")
	public String login() {
		return "mayur";//mayur
	}	
	
	@RequestMapping("/mayur")
	public String loginDB(Login login,Model model) {
		
		Session ss = sf.openSession();
		Login dblogin = ss.get(Login.class, login.getPassword());// pk
		
		String page = "mayur";
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
		return "mayurghanghav";
	}
	
	@RequestMapping("/mayurghanghav")
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
	
	@RequestMapping("coursepage")
	public String coursepage() {
		return "course";
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
	
	@RequestMapping("/mayurpage")
	public String loginpage() {
		return "mayur";
	}
	
	
}

