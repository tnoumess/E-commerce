package edu.gmu.infs640.proofofconcept.controller;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;

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
		HttpSession session=request.getSession();
		if(session.getAttribute("cart")==null)
			session.setAttribute("cart", new Hashtable<String, Integer>());
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
		if(!cart.containsKey(product.getProductId()))
		{
			cart.put(product.getProductId(),1);
		}else{
			
			cart.put(product.getProductId(),cart.get(product.getProductId()) +1);
		}
		
		//total amount in cart
		Set<String> keys = cart.keySet();
		Integer totalItemsCart = 0;
		for(String key: keys){
			totalItemsCart += cart.get(key);
		}
		session.setAttribute("cartTotal", totalItemsCart);
		
		System.out.println(cart);
			//cart.put(item.getItemId(), cart.get(item.getItemId()) +item.getQuantity());
		//logger.info("just added" +item.getQuantity()+ " camera");		
		
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
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute("cart")!=null){
			
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
			if(cart.containsKey(request.getParameter("productId"))){
				String id=request.getParameter("productId");System.out.println("number of"+product.getProductId()+":"+cart.get(product.getProductId()));
				if(cart.get(product.getProductId())==1){System.out.println("In remove last");
				cart.remove(product.getProductId());}else{
				cart.put(product.getProductId(),cart.get(id) -1);}
			}System.out.println(cart);
			
			//total amount in cart
			Set<String> keys = cart.keySet();
			Integer totalItemsCart = 0;
			for(String key: keys){
				totalItemsCart += cart.get(key);
			}
			session.setAttribute("cartTotal", totalItemsCart);
		}
		
		
		
		if(product.getProductId().startsWith("y")){
			try { 
				if(session.getAttribute("cart")==null){
				Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
				if(cart.isEmpty())session.invalidate();
				
				response.sendRedirect("GetStarted.jsp");
				
				}else				
					

				response.sendRedirect("http://localhost:8080/ProofOfConcept/listcart");

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			try { 
				if(session.getAttribute("cart")==null){
				Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
				if(cart.isEmpty())session.invalidate();
				
				response.sendRedirect("GetStarted.jsp");
				}else

				response.sendRedirect("http://localhost:8080/ProofOfConcept/listcart");

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
