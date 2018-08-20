package com.capgemini.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.capgemini.bean.Product;
import com.capgemini.repo.ProductRepo;


@Service
@Transactional
public class ProductServiceImpl implements IProductService {

	
	@PersistenceContext
	EntityManager entityManager;
	
	@Autowired
	private ProductRepo repo;
	
	
	public List<Product> getAllProducts()
	{
		List<Product> list = new ArrayList<Product>();
		Query q = entityManager.createQuery("from Product");
		list = q.getResultList();
		
		return list;
		//return (List<Product>) repo.findAll();	
	}
	
	public Optional<Product> getProduct(int p_id)
	{
		return repo.findById(p_id);
	}

	public void addProduct(  int p_id,String  p_name,String p_companyname,double p_price,String  p_dom,String  p_type, String   p_merchantid,String  p_couponid,String p_quantity)
	{
	
		Product p=new Product();
		p.setP_id(p_id);
		p.setP_name(p_name);
		p.setCompany_name(p_companyname);
		p.setPrice(p_price);
		p.setP_dateofmanufacturing(p_dom);
		p.setP_type(p_type);
		p.setP_merchant_id(p_merchantid);
		p.setCoupon_id(p_couponid);
		p.setQuantity(p_quantity);
		repo.save(p);
	}
	public void deleteProduct( int p_id)
	{
		repo.deleteById(p_id);
	}

	

	

	}


