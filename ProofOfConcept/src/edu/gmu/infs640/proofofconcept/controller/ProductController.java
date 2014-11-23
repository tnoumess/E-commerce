package edu.gmu.infs640.proofofconcept.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.gmu.infs640.proofofconcept.persistence.OrderDao;
import edu.gmu.infs640.proofofconcept.persistence.OrderDescriptionDao;
import edu.gmu.infs640.proofofconcept.persistence.ProductDao;

@Controller
public class ProductController{
	
	private final ProductDao dao;
	private final OrderDescriptionDao Od;
	private final OrderDao O;
	
	public ProductController(ProductDao dao, OrderDescriptionDao Od,OrderDao O){
		this.dao = dao;
		this.Od=Od;
		this.O=O;
	}
	
	@RequestMapping(value="/listcart"/*, method = RequestMethod.POST*/ )
	public void listcart(final HttpServletRequest request,
			final HttpServletResponse response){
		
		//
		Hashtable<String,BigDecimal> mycart=new Hashtable<String, BigDecimal>();
		
		HttpSession session=request.getSession();
		session.setAttribute("mycart", new Hashtable<String,BigDecimal>());
		//session.setAttribute("cart", new Hashtable<String, Integer>());
		BigDecimal sum= new BigDecimal(0);
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
		Set<?> values=cart.keySet();
		Iterator<?> iter=values.iterator();
		while(iter.hasNext()){
			//System.out.println("val"+iter.next());
			String id=(String) iter.next();
			dao.getProductById(id).getName();
			sum=sum.add(dao.getProductById(id).getPrice());
			System.out.println(sum);
			mycart.put(dao.getProductById(id).getName(), dao.getProductById(id).getPrice());
		
		}
		
		
		try {
			session.setAttribute("total",sum);
			
			session.setAttribute("mycart", mycart);
			response.sendRedirect("cart.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value="/checkout"/*, method = RequestMethod.POST*/ )
	public void checkout(final HttpServletRequest request,
			final HttpServletResponse response){
		HttpSession session=request.getSession();
		boolean login=false;
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
		
		for(int i=0;i<cart.size();i++){
			if((cart.containsKey("y_exelence")||cart.containsKey("y_free")||cart.containsKey("y_medium"))&&(session.getAttribute("user")==null)){
				login=true;
				
			}
			
		}	
		if(login){
			try {
						
				response.sendRedirect("Login.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			try {
				
				response.sendRedirect("Checkout.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}		
		
		
	}
	
	@RequestMapping(value="/checkpayment", method = RequestMethod.GET )
	public void checkpayment(final HttpServletRequest request,
			final HttpServletResponse response){
		BigDecimal sum= new BigDecimal(0);
		HttpSession session=request.getSession();
		int orderId=(request.getParameter("name")+new Date()).hashCode();
		if(session.getAttribute("cart")!=null){
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
		
		
		Set<?> values=cart.keySet();
		Iterator<?> iter=values.iterator();
		while(iter.hasNext()){
			
			String id=(String) iter.next();
			dao.getProductById(id).getName();
			sum=sum.add(dao.getProductById(id).getPrice());
			//double price=dao.getProductById(id).getPrice();
		                        Od.createNewdescription(orderId,id, 1, dao.getProductById(id).getPrice().doubleValue());
		}
			//cart.put(dao.getProductById(id).getName(), dao.getProductById(id).getPrice());
		
		if(session.getAttribute("user")!=null){
			  O.createNewOrder(orderId,session.getAttribute("user").toString(), sum.doubleValue());
			 
		}else{
			  O.createNewOrder(orderId, request.getParameter("name"), sum.doubleValue());
			
		}session.invalidate();
	
		try {
			String sms="sms";	
			HttpSession sessions=request.getSession();
			sessions.setAttribute("sms", sms);
			response.sendRedirect("Welcome.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}else{
			
			try {
				String sms_er="sms_er";
				HttpSession sessions=request.getSession();
				sessions.setAttribute("sms", sms_er);
				response.sendRedirect("product");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
			
		
		
	}
	
	
	@RequestMapping(value="/product", method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
        return new ModelAndView("Products", "products", dao.getAllProducts());
    }
}