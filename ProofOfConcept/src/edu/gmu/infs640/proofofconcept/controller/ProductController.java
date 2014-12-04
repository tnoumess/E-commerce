package edu.gmu.infs640.proofofconcept.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
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
	static BigDecimal totalID=new BigDecimal(0);
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
		Hashtable<String, List<Object>> mycartId=new Hashtable<String, List<Object>>();
		
		HttpSession session=request.getSession();
		session.setAttribute("mycart", new Hashtable<String,BigDecimal>());
		session.setAttribute("mycartId", new Hashtable<String, List<Object>>());
		//session.setAttribute("cart", new Hashtable<String, Integer>());
		BigDecimal sum= new BigDecimal(0);
		BigDecimal total_price=new BigDecimal(0);
		@SuppressWarnings("unchecked")
		Map<String,Integer>  cart=(Map<String,Integer>)session.getAttribute("cart");
		System.out.println(cart);
		Set<?> values=cart.keySet();
		Iterator<?> iter=values.iterator();
		if(!cart.isEmpty()){
		while(iter.hasNext()){
		
			
			String id=(String) iter.next();
			dao.getProductById(id).getName();
			sum=sum.add(dao.getProductById(id).getPrice());
			System.out.println(sum);
			mycart.put(dao.getProductById(id).getName(), dao.getProductById(id).getPrice());
			MathContext mc = new MathContext(4);
			List<Object> l=new ArrayList<Object>();
			l.add(dao.getProductById(id).getPrice());
			l.add(id);
			l.add(cart.get(id));
			
			BigDecimal total=new BigDecimal(0);
			BigDecimal unit_price=new BigDecimal(cart.get(id));
			total=unit_price.multiply(dao.getProductById(id).getPrice());
			l.add(total);			
			totalID=totalID.add(total);
			
			System.out.println(total_price.toString());
			//l.add(total_price);
			mycartId.put(dao.getProductById(id).getName(),l);
			
		
		}
		
				
		try {
			session.setAttribute("total",totalID);
			
			session.setAttribute("mycartId", mycartId);
			totalID= new BigDecimal(0);
			response.sendRedirect("cart.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}}else 
		{
			
			try {
				response.sendRedirect("product");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
		HttpSession session=request.getSession();
		int orderId=(request.getParameter("name")+new Date()).hashCode();
		if(session.getAttribute("mycartId")!=null){
		@SuppressWarnings("unchecked")
		Map<String,List<Object>>  cart=(Map<String,List<Object>>)session.getAttribute("mycartId");
		
		for (Map.Entry<String, List<Object>> entry : cart.entrySet()) {
            String key = entry.getKey();
            List<Object> values = entry.getValue();
            System.out.println("Key = " + key);
            System.out.println("Values = " + values + "n");
            System.out.println("-------------"+ values.getClass()+"------------");
            
            System.out.println("----"+values.get(0)+"--"+values.get(1)+"-------"+values.get(2)+"---"+values.get(3)+"---------");
            
            Od.createNewdescription(orderId,values.get(1).toString(), Integer.parseInt(values.get(2).toString()),  Double.parseDouble(values.get(3).toString()));
            
        }
	
		
		if(session.getAttribute("user")!=null){
			  O.createNewOrder(orderId,session.getAttribute("user").toString(), Double.parseDouble(session.getAttribute("total").toString()));
			 
		}else{
			  O.createNewOrder(orderId, request.getParameter("name"), Double.parseDouble(session.getAttribute("total").toString()));
			
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