package com.teachers.nsc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/TeachersLogontServlet")
public class TeachersLogontServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public TeachersLogontServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.removeAttribute("password");
		session.invalidate();
		
		response.sendRedirect("teachers-login.jsp");
		
	}


}
