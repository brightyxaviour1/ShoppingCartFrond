package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.dao.ProductDaoImpl;
/*import com.niit.dao.ProductDaoImpl;*/
import com.niit.model.Product;
/*import com.niit.service.ProductService;
*/
@Controller
public class MyController {

	String setName = "";

	public MyController() {

	}

	/*@RequestMapping("/login")
	public String login() {

		return "login";
	}
	*/

	@RequestMapping("/registration")
	public String registration() {

		return "reg";
	}

	/*
	 * @RequestMapping("/prod") public ModelAndView showproduct(
	 * 
	 * @RequestParam(value = "name", required = false, defaultValue = "World")
	 * String name) {
	 * 
	 * ModelAndView mv = null; if (name.equals("guitar")) {
	 * 
	 * mv = new ModelAndView("product");
	 * 
	 * mv.addObject("pId", 1); mv.addObject("name", "Guitar");
	 * mv.addObject("price", "10000"); mv.addObject("Description",
	 * "Electronic Guitar");
	 * 
	 * }
	 * 
	 * else if (name.equals("violin")) { mv = new ModelAndView("product");
	 * mv.addObject("pId", 2); mv.addObject("name", "violin");
	 * mv.addObject("price", "7000"); mv.addObject("Description", "Violin");
	 * 
	 * }
	 * 
	 * else if (name.equals("drum")) {
	 * 
	 * mv = new ModelAndView("product"); mv.addObject("pId", 3);
	 * mv.addObject("name", "Drum"); mv.addObject("price", "4500");
	 * mv.addObject("Description", "drum");
	 * 
	 * } else if(name.equals("Allpro")) { mv = new ModelAndView("allproducts");
	 * setName=name; } return mv; }
	 * 
	 * 
	 * /*
	 * 
	 * @RequestMapping("/allproducts")
	 *
	 * public ModelAndView getAllproducts() {
	 * 
	 * ModelAndView mv = new ModelAndView("allproducts");
	 * mv.addObject("productlist", ps.getProducts()); return mv;
	 * 
	 * }
	 * 
	 */
	
	
	

	@RequestMapping("/prod")
	public ModelAndView getproduct(@RequestParam(value = "name", required = false, defaultValue = "img") String name) {
		System.out.println("My controller getproduct invoked*****************");
		ModelAndView allprod = new ModelAndView("allproducts");
		setName = name;
		return allprod;
	}

	List<Product> products;

	@RequestMapping("/GsonConvert")
	public @ResponseBody String getValues() {

		System.out.println("My controller GsonConvert invoked********************** ");
		ProductDaoImpl dao = new ProductDaoImpl();
		if (setName.equals("LetUsC") || setName.equals("C++") || setName.equals("Java") || setName.equals("Networks") || setName.equals("FLAT") || setName.equals("CO") || setName.equals("Database") || setName.equals("DLD")) {
			products = dao.getProduct(setName);

		} else if (setName.equals("Allpro")) {
			products = dao.getAllProducts();
		}

		Gson gson = new Gson();
		String result = gson.toJson(products);
		return result;
	}
	

}
