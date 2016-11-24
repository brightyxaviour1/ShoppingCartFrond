package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.UserDetails;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;

	@Autowired
	UserDetails userDetails;

	@Autowired(required = true)
	private ProductDAO productDAO;
	@Autowired(required = true)
	private CartDAO cartDAO;

	/*
	 * @Autowired private CategoryDAO categoryDAO;
	 * 
	 * @Autowired private Category category;
	 */

	String loggedInUser_ID;

	@RequestMapping("/Login")
	public ModelAndView login(@RequestParam(value = "id") String id, @RequestParam(value = "password") String password,
			HttpSession session) {

		ModelAndView mv = new ModelAndView("/userhome");
		mv.addObject("product", new Product());
		mv.addObject("productList", this.productDAO.list());
		mv.addObject("cartSize", this.cartDAO.list().size());
		
		boolean isValidUser = userDAO.isValidUser(id, password);

		if (isValidUser == true) {
			System.out.println("Logged In");
			userDetails = userDAO.get(id);
			loggedInUser_ID = userDetails.getId();
			session.setAttribute("loggedInUser_ID", loggedInUser_ID);
			session.setAttribute("loggedInUser", userDetails.getName());
			if (userDetails.getAdmin() == 1) {
				System.out.println("Admin");
				ModelAndView mv1 = new ModelAndView("/home2");
				mv.addObject("isAdmin", "true");
				return mv1;

			} else {
				System.out.println("User");
				mv.addObject("isAdmin", "false");
			}
		} else {
			System.out.println("Invalid Credentials");

			mv = new ModelAndView("/login");
			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid username or password, please enter the valid details!!!");
		}

		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {

		List<Cart> cartItems = (List<Cart>) this.cartDAO.list();
		;

		for (Cart item : cartItems) {
			int id = item.getId();
			cartDAO.delete(id);
		}

		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
		session = request.getSession(true);
		// session.setAttribute("category", category);
		// session.setAttribute("categoryList", categoryDAO.list());

		mv.addObject("logoutMessage", "You are successfully logged out");
		mv.addObject("loggedOut", "true");

		return mv;
	}

	@RequestMapping("/about")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("about");
		return mv;
	}

	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("contact");
		return mv;
	}

	@RequestMapping("/details")
	public ModelAndView details() {
		ModelAndView mv = new ModelAndView("details");
		return mv;
	}

}
