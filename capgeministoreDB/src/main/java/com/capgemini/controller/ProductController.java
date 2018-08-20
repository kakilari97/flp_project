package com.capgemini.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.capgemini.bean.Product;
import com.capgemini.service.IProductService;


@RestController
public class ProductController {

	
	@Autowired
	IProductService service;
	
	public Optional<Product> getProductById(@RequestParam int p_id) {
		return service.getProduct(p_id);
	}

	
	   @RequestMapping(value="/products")
	    public List<Product> getProducts() { 

		Iterable<Product> products=service.getAllProducts();
	       return  (List<Product>) products;
	      
	    }
	  /* @RequestMapping(value="/products", method=RequestMethod.GET)
		public ModelAndView getAllProducts() {
			
			List<Product> list = service.getAllProducts();
			System.out.println(list);
			
			return new ModelAndView("Products","prods",list);
			
		}*/
	
	@RequestMapping("/productsbyid")
	public Optional<Product> getProduct(@RequestParam int p_id)
	{
		return service.getProduct(p_id);
	}
	
	
	
	@RequestMapping( "/addproducts{p_id}{p_name}{p_companyname}{p_price}{p_dom}{p_type}{p_merchantid}{p_couponid}{p_quantity}")
	public void addProduct( @RequestParam int p_id,@RequestParam String p_name,@RequestParam String p_companyname,@RequestParam double p_price,@RequestParam String p_dom,@RequestParam String p_type,@RequestParam String p_merchantid,@RequestParam String p_couponid,@RequestParam String p_quantity)
	{
		

		service.addProduct(  p_id, p_name, p_companyname,p_price,  p_dom,  p_type,    p_merchantid,  p_couponid, p_quantity);
	}
	
	@RequestMapping( "/deleteproduct")
	public void deleteProduct(@RequestParam int p_id)
	{
		service.deleteProduct(p_id);	
	}
	}
