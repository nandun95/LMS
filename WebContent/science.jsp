<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="com.mysql.cj.xdevapi.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
    String id =  request.getParameter("userId");
    String driveName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost/lms2";
    String userName = "root";
  String password =  "";
  
  try
  {
      Class.forName(driveName).newInstance();
      
  }catch(ClassNotFoundException e)
  {
      e.printStackTrace();
  }
  
  Connection connection = null;
  PreparedStatement preparedStatement = null;
  ResultSet resultSet = null;
  OutputStream file;
  
%>




<%
  try
  {
      connection = DriverManager.getConnection(url,userName,password);
      preparedStatement = connection.prepareStatement( "SELECT * FROM course");
      
      
      resultSet = preparedStatement.executeQuery();
      while(resultSet.next()){
    	  
    	
          
           %>
           
           <div class="row View-The-Courses" style="margin-top: 10px; margin-bottom: 10px; height: unset; width: 100%;">
               <div class="col-md-12">
                   <div class="cours-box" style="box-shadow: 0 0 10px rgba(37,73,214,0.18);
                   margin-bottom: 30px;
                   transition: transform .2s;
                   border: 1px solid rgb(255, 145, 0);
                   background-color: #262626;
                   color: beige;
                   width: 95%;
                   height: 100%;
                   margin: 20px;">
                       <p class="title" style="text-align: center; font-size: 20px; margin-top: 10px;"><%= resultSet.getString("title") %></p>
                          
                          <p class="category" style="color: rgb(51, 255, 0); margin-left: 10px;">Category:<%= resultSet.getString("category") %></p>
                          <p class="discription"style="margin-left: 10px;"><%= resultSet.getString("discription") %></p>
                       </div>
               </div>
           </div>
           <style type="text/css">
              .cours-box:hover
                  {
                      transform: scale(1.);
                      border: 3px solid rgb(255, 145, 0);
                  }

          </style>
           <% 
    	  
      }
      connection.close();
  }catch(Exception e)
{
      e.printStackTrace();
}

           %>
  
</body>
</html>