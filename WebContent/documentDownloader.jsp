<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
	String url = "jdbc:mysql://localhost/lms2";
	Connection connection = null;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	connection = DriverManager.getConnection(url,"root","");
	
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	OutputStream img;
	try
	{
	preparedStatement = connection.prepareStatement("SELECT * FROM course");
	
	resultSet = preparedStatement.executeQuery();
	
	if(resultSet.next())
	{%>
		
		<div class="row">
			<div class="col-md-12">
				<div class="imgviwer">
					<%
					byte barray[] = resultSet.getBytes(5);
					response.setContentType("images/png");
					img = response.getOutputStream();
					img.write(barray);
					img.flush();
					img.close();
					%>
				</div>
			</div>
		</div>
		<%
		
	
	}
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	finally
	{
		try
		{
			if(connection != null)
			{
				connection.close();
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
%>
</body>
</html>