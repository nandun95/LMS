package com.newcourse.nsc;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadServlet")
@MultipartConfig(maxFileSize = 100177215)
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UploadDao uploadDao; 
       
   
   @Override
   public void init()
   {
	   uploadDao = new UploadDao();
   }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String category = request.getParameter("category");
		String discription = request.getParameter("discription");
		
		InputStream inputStream = null;
		
		String message = null;
		
		Part filePart = request.getPart("filname");
		if (filePart != null) 
		{
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			inputStream = filePart.getInputStream();
			
		}
		
		int row = uploadDao.createNewCourse(title, category, discription, inputStream);
		if (row>0) 
		{
			message = "File uploaded and saved into database";
			
		}
		request.setAttribute( "Message", message);
		
		getServletContext().getRequestDispatcher("/add.jsp")
		.forward(request, response);
		
		
		
		
		
	}

}
