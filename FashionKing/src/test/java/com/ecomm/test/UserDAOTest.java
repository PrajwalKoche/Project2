package com.ecomm.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest 
{
	static UserDAO userDAO;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		userDAO=(UserDAO)myContext.getBean("userDAO");
	}
	
	@Test
	public void registerUserTest() 
	{
		UserDetail user=new UserDetail();
		user.setUsername("Ashwin");
		user.setPassword("12345");
		user.setCustomerName("Ashwin Koche");
		user.setEnabled(true);
		user.setEmailId("koche.ashwin@gmail.com");
		user.setAddress("Nagpur");
		user.setMobileNo("7225885566");
		user.setRole("ROLE_USER");
		
		assertTrue("Problem in inserting UserDetail",userDAO.registerUser(user));
	}
	
}
