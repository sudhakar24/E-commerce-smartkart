 package com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Daolmpl.UserDaoImpl;
import com.model.User;

@Controller 
public class indexController {
	@Autowired
	UserDaoImpl userDaoImpl;
	@RequestMapping("/")
	public String index()
	{
		return "index";
	}
	@RequestMapping(value="/index")
	public String in()
	{
		return "index";
	}
	
	@RequestMapping("/userLogged")
	public String userLogged()
	{
		return "index";
	}
	@RequestMapping("/error")
	public String errorPage()
	{
		return "error";
	}
	/*@RequestMapping("/register")
	public String registration()
	{
		return "register";
	}*/
	@RequestMapping("/goToLogin")
	public ModelAndView goToLogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView goToRegister()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",new User());
		mv.setViewName("register");
		return mv;
		
	}
	@RequestMapping(value="/saveRegister", method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user")User user)
	{
		ModelAndView mv=new ModelAndView();
		user.setRole("ROLE_USER");
		userDaoImpl.inserUser(user);
		mv.setViewName("index");
		return mv;
	}
}
