package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;


public class SupplierDAOTest 
{
	
		static SupplierDAO supplierDAO;
		@BeforeClass
		public static void initialize()
		{
			AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
			myContext.scan("com.ecomm");
			myContext.refresh();
			
			supplierDAO=(SupplierDAO)myContext.getBean("supplierDAO");
		}
		@Ignore
		@Test
		public void addSupplierTest()
		{
			Supplier supplier=new Supplier();
			supplier.setSupplierId(1001);
			supplier.setSupplierName("Cloud Retail");
			supplier.setSupplierAddr("Mumbai");
			
			assertTrue("Problem in inserting Supplier",supplierDAO.addSupplier(supplier));
		}
		
		@Ignore
		@Test
		public void updateSupplierTest()
		{
		Supplier supplier=(Supplier)supplierDAO.getSupplier(1001);
		supplier.setSupplierAddr("Mumbai");
		
		System.out.println("Supplier ID:"+supplier.getSupplierId());
		System.out.println("Supplier Addr:"+supplier.getSupplierAddr());
		
		assertTrue("Problem in updating Supplier",supplierDAO.updateSupplier(supplier));
		}
		
		@Test
		public void retrieveSupplierTest()
		{
			List<Supplier> supplierList=(List<Supplier>)supplierDAO.retreiveSupplier();
			
			assertTrue("Problem in Retrieving the Supplier List",supplierList.size()>0);
			
			for(Supplier supplier:supplierList)
			{
				System.out.println(" "+supplier);
			}
			
		}
}
