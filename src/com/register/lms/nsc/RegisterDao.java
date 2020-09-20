package com.register.lms.nsc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.register.lms.nsc. RgisterBean ;

public class RegisterDao 
{
	public int Registration (RgisterBean  rgisterBean) throws ClassNotFoundException
	{
		int result = 0;
		Class.forName("com.mysql.jdbc.Driver");
		
		try 
		{
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/lms2","root","");
			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users" + "(username,email,password)VALUES" + "(?,?,?);");
			preparedStatement.setString(1, rgisterBean.getUsername());
			preparedStatement.setString(2, rgisterBean.getEmail());
			preparedStatement.setString(3, rgisterBean.getPassword());
			
			System.out.println(preparedStatement);
			result = preparedStatement.executeUpdate();
			
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return result;
	}

	
		
	}


