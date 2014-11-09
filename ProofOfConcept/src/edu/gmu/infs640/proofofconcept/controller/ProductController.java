package edu.gmu.infs640.proofofconcept.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.gmu.infs640.proofofconcept.persistence.ProductDao;

@Controller
public class ProductController{
	
	private final ProductDao dao;
	
	public ProductController(ProductDao dao){
		this.dao = dao;
	}
	
	@RequestMapping(value="/product", method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
        return new ModelAndView("Products", "products", dao.getAllProducts());
    }
}
