package com.niit.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;

//DAO   Implementation class

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public ProductDaoImpl() {
		// System.out.println("ProductDaoImpl constructor invoked---");
	}

	List<Product> products = null;

	// For One product
	public List<Product> getProduct(String name) {
		System.out.println("ProductDao  getProduct  invoked*********");
		products = new ArrayList<Product>();

		Product pm1 = null;

		if ("OnePlus 3".equals(name))
			pm1 = new Product(1, "6 GB Ram", "Oxygen OS", 27500);
		if ("Samsung S7".equals(name))
			pm1 = new Product(2, "4 GB Ram", "12MP primary camera | 5MP front facing camera", 50900);
		if ("Lenovo Vibe K5 (Gold, 16GB)".equals(name))
			pm1 = new Product(3, "4 GB Ram", "13MP primary camera | 5MP front facing camera", 13500);
		if ("Lenovo vibe k5 plus".equals(name))
			pm1 = new Product(3, "2 GB Ram", "5MP", 8500);
		if ("Asus Zenfone Max".equals(name))
			pm1 = new Product(3, "3 GB Ram", "13MP primary camera | 5MP front", 12835);
		if ("Moto G Plus, 4th Gen (Black, 32 GB)".equals(name))
			pm1 = new Product(3, "3 GB Ram", "16 MP | 5 MP", 14500);
		
		if ("LeEco Le 2 (Rose Gold, 32 GB)".equals(name))
			pm1 = new Product(3, "3 GB RAM | 32 GB ROM", "16MP Primary Camera | 8MP Front", 12000);
		if ("SAMSUNG Galaxy J5".equals(name))
			pm1 = new Product(3, "2 GB RAM | 16 GB ROM | Expandable Upto 128 GB", "13MP Primary Camera | 5MP Front", 11100);

		products.add(pm1);

		return products;
	}

	// For all products
	public List<Product> getAllProducts() {
		System.out.println("ProductDao  getAllProducts  invoked*********");

		products = new ArrayList<Product>();
		Product p1 = new Product(1, "OnePlus 3", "6 GB Ram | Oxygen OS", 27500);
		Product p2 = new Product(2, "Samsung S7", "4 GB Ram | 12MP primary camera | 5MP front facing camera", 50900);
		Product p3 = new Product(3, "Lenovo Vibe K5 (Gold, 16GB)", "4 GB Ram | 13MP primary camera | 5MP front facing camera", 13500);
		Product p6 = new Product(6, "Lenovo vibe k5 plus", "2 GB Ram | 5MP", 8500);
		Product p4 = new Product(4, "Asus Zenfone Max", "computer org books", 500);
		Product p5 = new Product(5, "FLAT ", "automata  books", 500);
		
		Product p7 = new Product(7, "Database ", "database books", 500);
		Product p8 = new Product(8, "DLD ", "data logical books", 500);
		products.add(p1);
		System.out.println("First rcored added--");
		products.add(p2);
		System.out.println("second rcored added--");
		products.add(p3);
		System.out.println("third rcored added--");
		products.add(p4);
		products.add(p5);
		products.add(p6);
		products.add(p7);
		products.add(p8);
		return products;
	}

	// All products
	/*
	  public List<Product> getProducts() {
	  
	  List<Product> productlist = null;
	  
	  try { Session session = sessionFactory.openSession();
	  
	  System.out.println("Session:" + session.isOpen());
	  
	  // 1.Read Product System.out.println(
	 ***********************Read AllProducts***************"); Criteria ctr =
	  session.createCriteria(Product.class); productlist = ctr.list(); for
	  (Product p : productlist) { System.out.println(p.getpId() + "\t" +
	  p.getpName() + "\t" + p.getPrice() + "\t" + p.getpDescription()); }
	  
	 System.out.println(
	 "\n***********************Read Product By ProductId***************"); //
	  2.Get ProductBy Id
	  
	  Product prod = (Product) session.load(Product.class, 1);
	  
	  System.out.println( prod.getpId() + "\t" + prod.getpName() + "\t" +
	  prod.getPrice() + "\t" + prod.getpDescription());
	  
	  // 3. Update product SQLQuery sqlquery = session.createSQLQuery(
	  "select * from  ALLPRODUCT where pId=1");
	 
	 sqlquery.addEntity(com.niit.model.Product.class); List<Product> list =
	  sqlquery.list(); for (Product per : list)
	  
	  {
	  
	  per.setpId(5); per.setpName("Some new "); per.setPrice(6588.09);
	  per.setpDescription("some new Description");
	  
	  session.update(per); }
	  
	  // 4.Delete Product Product prod2 = (Product) session.load(Product.class,
	  1); session.delete(prod2);
	  
	  }
	  
	  catch (Exception ex) {
	  
	  System.out.println("Exception occures.."); ex.printStackTrace();
	  
	  }
	  
	  return productlist;
	  
	  }
	  
	 
*/
}
