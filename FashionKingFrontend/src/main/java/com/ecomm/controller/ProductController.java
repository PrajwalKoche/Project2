package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;



@Controller
public class ProductController
{
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/showProduct")
	public String showProduct(Model m)
	{
		List<Product> productList=productDAO.retrieveProduct();
		m.addAttribute("productList",productList);
		return "Product";
	}
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("productDesc")String productDesc,@RequestParam("stock")int stock,@RequestParam("price")int price,@RequestParam("category")String category,@RequestParam("supplier")String supplier,Model m)
	{
		Product product=new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setCategory(category);
		product.setSupplier(supplier);
		product.setStock(stock);
		product.setPrice(price);
		productDAO.addProduct(product);
		List<Product> productList=productDAO.retrieveProduct();
		m.addAttribute("productList",productList);
		return "Product";		
	}
	
	@RequestMapping("/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId")int productId,Model m)
	{
		System.out.println("I am in delete product controller");
		Product product=productDAO.getProduct(productId);
		
		productDAO.deleteProduct(product);
		List<Product> productList=productDAO.retrieveProduct();
		m.addAttribute("productList",productList);
		return "Product";
	}
	
	@RequestMapping("/editProduct/{productId}")
	public String editProduct(@PathVariable("productId")int productId,Model m)
	{
		System.out.println("I am in edit product controller");
		Product product=productDAO.getProduct(productId);		
		productDAO.updateProduct(product);
		m.addAttribute("productList",product);
		return "UpdateProduct";
	}
	
	@RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	public String updateProduct(@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("productDesc")String productDesc,@RequestParam("stock")int stock,@RequestParam("price")int price,@RequestParam("category")String category,@RequestParam("supplier")String supplier,Model m)
	{
		System.out.println("I am in update product controller");
		Product product=new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setCategory(category);
		product.setSupplier(supplier);
		product.setStock(stock);
		product.setPrice(price);
		productDAO.updateProduct(product);
		List<Product> productList=productDAO.retrieveProduct();
		m.addAttribute("productList",productList);
		return "Product";
	}

	
	
}
