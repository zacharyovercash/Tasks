package com.hcl.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.dao.UserRepository;
import com.hcl.model.User;

@RestController
public class UserController {

	
	@Autowired
	private UserRepository repo;
	
	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@PostMapping("/login")
	private RedirectView authenticate(User u,HttpServletResponse response) throws IOException {
		User exists = repo.findByUsernameAndPassword(u.getUsername(), u.getPassword());
		
		if(exists != null) {
			return new RedirectView("/display");
		}
		return new RedirectView("/login");
	}
	
	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}
	
	@PostMapping("/register")
	public void registering(User u,HttpServletResponse response) throws IOException
	{
		repo.save(u);
		response.sendRedirect("login");
	}
}
