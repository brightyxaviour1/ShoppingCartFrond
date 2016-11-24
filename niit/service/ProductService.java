package com.niit.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.dao.ProductDaoImpl;
import com.niit.model.Product;

public class ProductService {

	@Autowired
	ProductDaoImpl pdimpl;

	public ProductService() {

		System.out.println("Product Service invoked-----");
	}

	public List<Product> getProducts() {

		List<Product> productList = pdimpl.getAllProducts();

		return productList;
	}

}
