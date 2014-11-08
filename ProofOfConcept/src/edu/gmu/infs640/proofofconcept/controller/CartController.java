package edu.gmu.infs640.proofofconcept.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.gmu.infs640.proofofconcept.persistence.Model.Item;

@Controller
public class CartController {
static private final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/*private final UserDao userDao;
	
	public CartController(final UserDao userDao){
		this.userDao = userDao;
	}*/
//List<Item> cart;
	
	@RequestMapping(value="/listcart", method = RequestMethod.POST)
	public void listcart(final HttpServletRequest request,
			final HttpServletResponse response){
		
		
	}
	
	@RequestMapping(value="/addtocart", method = RequestMethod.POST)
	public void addtocart(@ModelAttribute Item item,final HttpServletRequest request,
			final HttpServletResponse response/*,@ModelAttribute("Cart") List<Item> cart*/){
		//cart.add(item);
		System.out.println(item.getItemId());
		System.out.println(item.getQuantity());
		HttpSession session=request.getSession();
		if(session.getAttribute("cart")==null)
			session.setAttribute("cart", new Hashtable<String, Integer>());
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
		if(!cart.containsKey(item.getItemId()))
			cart.put(item.getItemId(), 0);
		cart.put(item.getItemId(), cart.get(item.getItemId()) +item.getQuantity());
		
		System.out.println("my cart is:"+cart.toString());
		System.out.println("my session:"+session.getAttribute("user"));
		try {
			response.sendRedirect("Products.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value="/removeitem")
	public void removeitem(
			final HttpServletRequest request,
			final HttpServletResponse response){
		request.getSession().invalidate();
		try {
			response.sendRedirect("Welcome.jsp");
		} catch (IOException e) {
			logger.error(e.getMessage(),e);
			try {
				response.sendRedirect("Welcome.jsp");
			} catch (IOException e1) {
				//should never get here
				logger.error("Failed to redirect back to welcome page",e);
			}
		}
	}

}
