package com.ecomm.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Product;
import com.ecomm.model.UserDetail;

@Controller
public class UserController 
{
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/login_success")
	public String successLoggedIn(HttpSession session)
	{
		String page="";
		
		SecurityContext sContext=SecurityContextHolder.getContext();
		Authentication authentication=sContext.getAuthentication();
		
		String username=authentication.getName();
		session.setAttribute("username", username);
		
		List<Product> productList=productDAO.retrieveProduct();
		session.setAttribute("productList", productList);
		
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			
			if(role.getAuthority().equals("ROLE_ADMIN"))
				page="AdminHome";
			else
				page="UserHome";
			
		}
		
		return page;
	}
	
	@RequestMapping(value="/logout_success")
	public String loggedOut()
	{
		String page="logout";
		
		
		return page;
	}
	
	@RequestMapping("/register")
	public String showRegisterPage(Model m) 
	{
		System.out.println("== I am in My Controller -Register Page");
		return "Register";
	}
	
	@RequestMapping("/InsertRegisterDetail")
	public String insertRegister(@RequestParam("userName")String userName,@RequestParam("password")String password,@RequestParam("customerName")String customerName,@RequestParam("emailId")String emailId,@RequestParam("mobileNo")String mobileNo,@RequestParam("address")String address,@RequestParam("role")String role,Model m)
	{
		UserDetail user=new UserDetail();
		user.setUsername(userName);
		user.setPassword(password);
		user.setEnabled(true);
		user.setCustomerName(customerName);
		user.setEmailId(emailId);
		user.setMobileNo(mobileNo);
		user.setAddress(address);
		user.setRole("ROLE_USER");
		//userDAO.registerUser(user);
		
	
		String encodedPassword=bCryptPasswordEncoder.encode(user.getPassword());
		
		user.setPassword(encodedPassword);
		
		if(userDAO.registerUser(user))
		{
			m.addAttribute("reg_sucess","Registration Sucessful");
			return "Login";
		}
		else
		{
			m.addAttribute("errorinfo", "Error in Registration");
			return "Register";
		}
		
    }
}