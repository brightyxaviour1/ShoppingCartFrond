package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import com.niit.model.Product;

public interface ProductDao {

	public void setSessionFactory(SessionFactory sessionFactory);

	public List<Product> getAllProducts();
	public List<Product> getProduct(String name);

}
