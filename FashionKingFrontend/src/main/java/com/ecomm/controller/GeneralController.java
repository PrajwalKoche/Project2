package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController 
{
	@RequestMapping("/login")
	public String showLoginPage(Model m) 
	{
		System.out.println("== I am in My Controller -Login Page");
		m.addAttribute("page name","Sign In");
		return "Login";
	}
	
	
	@RequestMapping("/userpage")
	public String showUserPage(Model m) 
	{
		System.out.println("== I am in My Controller -User Page");
		m.addAttribute("page name","User Page");
		return "UserHome";
	}
	
	@RequestMapping("/adminpage")
	public String showAdminPage(Model m) 
	{
		System.out.println("== I am in My Controller -Admin Page");
		m.addAttribute("page name","Admin Page");
		return "AdminHome";
	}
	
	@RequestMapping("/ProductDisplay")
	public String showProductPage(Model m) 
	{
		System.out.println("== I am in My Controller -Product Page");
		m.addAttribute("page name","Product Page");
		return "ProductDisplay";
	}
	
	
}
