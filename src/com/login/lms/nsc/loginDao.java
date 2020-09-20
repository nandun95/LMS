package com.login.lms.nsc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.login.lms.nsc.loginBean;
import com.sun.org.apache.bcel.internal.generic.RETURN;;

public class loginDao {
	
	public boolean Validate (loginBean loginbean) throws ClassNotFoundException
	{
		boolean status = false;
		Class.forName("com.mysql.jdbc.Driver");
		
		try
		{
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/lms2","root","");
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE username = ? and password = ?;");
			preparedStatement.setString(1, loginbean.getUsername());
			preparedStatement.setString(2, loginbean.getPassword());
			
			System.out.println(preparedStatement);
			ResultSet resultSet = preparedStatement.executeQuery();
			status = resultSet.next();
		} catch (Exception e)
		{
			e.printStackTrace();

		}
		
		return status;
		
	}


}
