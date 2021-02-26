package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class ProductDAOTest
{
	static ProductDAO productDAO;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		productDAO=(ProductDAO)myContext.getBean("productDAO");
	}
	@Ignore
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductId(1001);
		product.setProductName("Redmi Note 9");
		product.setProductDesc("4G Mobile with Camera");
		product.setCategory("Mobile");
		product.setSupplier("Cloud Retail");
		product.setStock(100);
		product.setPrice(15000);
		
		assertTrue("Problem in inserting Product",productDAO.addProduct(product));
	}
	@Ignore
	@Test
	public void updateProductTest()
	{
	Product product=(Product)productDAO.getProduct(1001);
	product.setProductDesc("Redmi Mobile with 4G and AI Camera");
	
	System.out.println("Product ID:"+product.getProductId());
	System.out.println("Product Name:"+product.getProductName());
	
	assertTrue("Problem in updating Product",productDAO.updateProduct(product));
	}
	
	@Test
	public void retrieveProductTest()
	{
		List<Product> productList=(List<Product>)productDAO.retrieveProduct();
		
		assertTrue("Problem in Retrieving the Product List",productList.size()>0);
		
		for(Product product:productList)
		{
			System.out.println(" "+product);
		}
		
	}
}
