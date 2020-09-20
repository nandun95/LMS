package com.login.lms.nsc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private loginDao logindao;
	
	public void init()
	{
		logindao = new loginDao();
	}
     
       
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		
		loginBean loginbean =  new loginBean();
		loginbean.setUsername(username);
		loginbean.setPassword(password);
		
	
		
		try 
		{
			if (logindao.Validate(loginbean)) 
			{
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				response.sendRedirect("home.jsp");
				
				
			
				
			}
			
			else {
				response.sendRedirect("login.jsp");
			}
			
		} catch (ClassNotFoundException|IOException e) 
		{
			e.printStackTrace();
		}
		
		
		
	}

	
	
}
