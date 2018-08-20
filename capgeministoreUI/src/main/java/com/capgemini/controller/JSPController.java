package com.capgemini.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JSPController {
	
	@RequestMapping("/ProductOptions")
	public String productoptions() {
		return "ProductOptions";
	}
	

	@RequestMapping("/addproduct")
	public String addProducts() {
		return "addproduct";
	}
	
	@RequestMapping("/changeprofile")
	public String changeprofile() {
		return "changeprofile";
	}
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/Inventory")
	public String inventory(){
		return "Inventory";
	}
	@RequestMapping("/merchant")
	public String displayMerchant (){
		return "merchant";
	}
	@RequestMapping("/MerchantOptions")
	public String merchantoptions(){
		return "MerchantOptions";
	}
	@RequestMapping("/Products")
	public String products(){
		return "Products";
	}
	@RequestMapping("/productbyid")
	public String productbyid(){
		return "productbyid";
	}
	@RequestMapping("/remove")
	public String remove(){
		return "remove";
	}
	
}
