package com.teachers.nsc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.teachers.nsc.TeachersLoginBean;;

public class TeachersLoginDao {
	
	public boolean Login(TeachersLoginBean teachersLoginBean) throws ClassNotFoundException
	{
		boolean result = false;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try {
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/lms2","root","");
			PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM teachers WHERE username = ? and password = ?;");
			preparedStatement.setString(1, teachersLoginBean.getUsername());
			preparedStatement.setString(2, teachersLoginBean.getPassword());
			
			System.out.println(preparedStatement);
			ResultSet resultSet = preparedStatement.executeQuery();
			result = resultSet.next();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
