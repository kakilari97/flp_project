package com.capgemini.bean;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Product {

	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	int p_id;
	
	@Column(name="p_name")
	String p_name;
	
	@Column(name="p_companyname")
	String p_companyname;
	
	@Column(name="p_price")
	double p_price;
	
	@Column(name="p_dom")
	String p_dom;
	
	@Column(name="p_type")
	String p_type;
	
	@Column(name="p_merchant_id")
	String p_merchantid;
	
	@Column(name="p_coupon_id")
	String p_couponid;
	
	@Column(name="p_quantity")
	String p_quantity;

	public Product() {

	}
	@Override
	public String toString() {
		return "Product Details:\n"+"***\n"
				+ " Product id=" + p_id + "\nProduct name=" + p_name + "\n Company name=" + p_companyname + "\n price="
				+ p_price + "\n Date of manufacturing=" + p_dom + "\n Category=" + p_type + "\n Merchant id=" + p_merchantid
				+ "\n Coupon id=" + p_couponid + "\n Quantity=" + p_quantity + "***";
	}
	

	public Product(int p_id, String p_name, String p_companyname, double p_price, String p_dom,
			String p_type, String p_merchantid, String p_couponid, String p_quantity) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_companyname = p_companyname;
		this.p_price = p_price;
		this.p_dom = p_dom;
		this.p_type = p_type;
		this.p_merchantid = p_merchantid;
		this.p_couponid = p_couponid;
		this.p_quantity = p_quantity;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getCompany_name() {
		return p_companyname;
	}

	public void setCompany_name(String company_name) {
		this.p_companyname = company_name;
	}

	public double getPrice() {
		return p_price;
	}

	public void setPrice(double price) {
		this.p_price = price;
	}

	public String getP_dateofmanufacturing() {
		return p_dom;
	}

	public void setP_dateofmanufacturing(String p_dateofmanufacturing) {
		this.p_dom = p_dateofmanufacturing;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	

	public String getP_merchant_id() {
		return p_merchantid;
	}

	public void setP_merchant_id(String p_merchant_id) {
		this.p_merchantid = p_merchant_id;
	}

	public String getCoupon_id() {
		return p_couponid;
	}

	public void setCoupon_id(String coupon_id) {
		this.p_couponid = coupon_id;
	}

	public String getQuantity() {
		return p_quantity;
	}

	public void setQuantity(String quantity) {
		this.p_quantity = quantity;
	}

}
