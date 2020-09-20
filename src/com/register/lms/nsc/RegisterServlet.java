package com.register.lms.nsc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegisterDao registerDao = new RegisterDao();
       
  
    public RegisterServlet() {
        super();
      
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String usename = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		RgisterBean rgisterBean = new RgisterBean();
		rgisterBean.setUsername(usename);
		rgisterBean.setEmail(email);
		rgisterBean.setPassword(password);
		
		try 
		{
			if (usename =="") {
				response.sendRedirect("register.jsp");
			}
			else if (email =="") {
				response.sendRedirect("register.jsp");
			}
			else if (password == "") {
				response.sendRedirect("register.jsp");
			}
			else {
				registerDao.Registration(rgisterBean);
				response.sendRedirect("home.jsp");
			}
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		
	}

}
