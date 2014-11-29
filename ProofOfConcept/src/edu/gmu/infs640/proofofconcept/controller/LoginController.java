package edu.gmu.infs640.proofofconcept.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.gmu.infs640.proofofconcept.persistence.UserDao;

@Controller
public class LoginController {
	
	static private final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	private final UserDao userDao;
	
	public LoginController(final UserDao userDao){
		this.userDao = userDao;
	}
	
	@RequestMapping(value="/createaccount", method = RequestMethod.POST)
	public void createAccount(
			@RequestParam("name")
			final String userName,
			@RequestParam("password1")
			final String password1,
			@RequestParam("password2")
			final String password2,
			final HttpServletRequest request,
			final HttpServletResponse response){
		if(userName != null && password1 != null && password2 != null){
			if(!password1.equals(password2)){
				try {
					response.sendRedirect("CreateAccount.jsp?errorMsg=Both%20passwords%20must%20match.");
				} catch (IOException e) {
					logger.error(e.getMessage(),e);
				}
			}
			else {
				try {
					if(!userDao.nameInUse(userName)){
						if(userDao.createNewUser(userName, password1)){
							request.getSession().setAttribute("user", userName);
							response.sendRedirect("Welcome.jsp");
						}
					}
					else {
						response.sendRedirect("CreateAccount.jsp?errorMsg=That%20name%20is%20already%20being%20used.");
					}
				}
				catch(Exception e){
					logger.error(e.getMessage(),e);
				}
			}
		}
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public void login(
			@RequestParam("name")
			final String userName,
			@RequestParam("password")
			final String password,
			final HttpServletRequest request,
			final HttpServletResponse response){
		if(userName != null && password != null){
			try {
				if(userDao.validateLogin(userName, password)){
					request.getSession().setAttribute("user", userName);
					response.sendRedirect("UserFeed.jsp");
				}
				else {
					response.sendRedirect("Login.jsp?errorMsg=Invalid%20user%20name%20or%20password.");
				}
			}
			catch(Exception e){
				logger.error(e.getMessage(),e);
			}
		}
	}
	
	@RequestMapping(value="/logout")
	public void login(
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
