package com.capgemini.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.capgemini.bean.Product;



@RestController

public class ProductController {
	

	@RequestMapping("/products")

	public List<Product> getMerchant() {
	
		RestTemplate rt1 = new RestTemplate();
		List<Product> p1 = rt1.getForObject("http://localhost:9898/products", ArrayList.class);
		return p1;
	}

	@RequestMapping("/productsbyid")

	public Product getProduct(@RequestParam int p_id) {

		RestTemplate rt2 = new RestTemplate();
		Product p = rt2.getForObject("http://localhost:9898/productsbyid?p_id=" + p_id, Product.class);
		return p;

	}

	
	@RequestMapping("/addproducts")
	public Product addProduct( @RequestParam int p_id,@RequestParam String p_name,@RequestParam String p_companyname,@RequestParam double p_price,@RequestParam String p_dom,@RequestParam String p_type,@RequestParam String p_merchantid,@RequestParam String p_couponid,@RequestParam String p_quantity) {


	RestTemplate rt3=new RestTemplate();
	Product p=rt3.getForObject("http://localhost:9898/addproducts?p_id="+p_id+"&p_name="+p_name+"&p_companyname="+p_companyname+"&p_price="+p_price+"&p_dom="+p_dom+"&p_type="+p_type+"&p_merchantid="+p_merchantid+"&p_couponid="+p_couponid+"&p_quantity="+p_quantity, Product.class);
	return p;

	}
	
	@RequestMapping("/deleteproduct")
	public Product deleteMerchant(@RequestParam int p_id) {


	RestTemplate rt4=new RestTemplate();
	Product p=rt4.getForObject("http://localhost:9898/deleteproduct?p_id="+p_id, Product.class);
	return p;

	}
}
