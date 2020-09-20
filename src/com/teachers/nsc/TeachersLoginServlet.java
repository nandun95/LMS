package com.teachers.nsc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/TeachersLoginServlet")
public class TeachersLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TeachersLoginDao teachersLoginDao;
   
   public void init()
   {
	   teachersLoginDao = new TeachersLoginDao();
   }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		TeachersLoginBean teachersLoginBean = new TeachersLoginBean();
		teachersLoginBean.setUsername(username);
		teachersLoginBean.setPassword(password);
		
		try {
			if (teachersLoginDao.Login(teachersLoginBean)) 
			{
				
				HttpSession session = request.getSession();
				session.setAttribute("teacherUsername", username);
				session.setAttribute("password", password);
				response.sendRedirect("add.jsp");
				
			}
			else {
				response.sendRedirect("teachers-login.jsp");
			}
			
		} catch (ClassNotFoundException|IOException e) {
			e.printStackTrace();
		}
	}

	
	

}
