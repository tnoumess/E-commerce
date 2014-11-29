package edu.gmu.infs640.proofofconcept.controller;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.gmu.infs640.proofofconcept.persistence.jpa.Product;

@Controller
public class CartController {
static private final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	
	@RequestMapping(value="/addtocart", method = RequestMethod.POST)
	public void addtocart(@ModelAttribute Product product,final HttpServletRequest request,
			final HttpServletResponse response/*,@ModelAttribute("Cart") List<Item> cart*/){
		//cart.add(item);
		System.out.println(product.getProductId());
		//System.out.println(item.getQuantity());
		HttpSession session=request.getSession();
		if(session.getAttribute("cart")==null)
			session.setAttribute("cart", new Hashtable<String, Integer>());
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
		if(!cart.containsKey(product.getProductId()))
			{cart.put(product.getProductId(),1);}
		
			//cart.put(item.getItemId(), cart.get(item.getItemId()) +item.getQuantity());
		//logger.info("just added" +item.getQuantity()+ " camera");
		
		System.out.println("my cart is:"+cart.toString());
		System.out.println("my session:"+session.getAttribute("user"));
		if(product.getProductId().startsWith("y")){
			try {
				response.sendRedirect("GetStarted.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else
		try {
			response.sendRedirect("product");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@RequestMapping(value="/removefromcart", method = RequestMethod.POST)
	public void removetocart(@ModelAttribute Product product,final HttpServletRequest request,
			final HttpServletResponse response/*,@ModelAttribute("Cart") List<Item> cart*/){
		
		System.out.println(product.getProductId());		
		HttpSession session=request.getSession();
		
		if(session.getAttribute("cart")!=null){
			
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
			if(cart.containsKey(request.getParameter("productId")))
				cart.remove(request.getParameter("productId"));
			
				}
		try { 
			if(session.getAttribute("cart")!=null){
			Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
			if(cart.isEmpty())session.invalidate();}
			response.sendRedirect("product");
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