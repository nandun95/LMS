package com.newcourse.nsc;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

public class UploadDao {
	
	private static final String url = "jdbc:mysql://localhost/lms2";
	private static final String name = "root";
	private static final String password = "";
	private static final String sql = "INSERT INTO course (title,category,discription,file) VALUES (?,?,?,?)";
	
	public int createNewCourse(String title, String category, String discription, InputStream file) 
	{
		int row = 0;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			
			e1.printStackTrace();
		}
		try 
		{
			Connection connection = DriverManager.getConnection(url,name,password);
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, title);
			preparedStatement.setString(2, category);
			preparedStatement.setString(3, discription);
			
			if (file !=null) 
			{
				preparedStatement.setBlob(4, file);
				
			}
			row = preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			
			printSQLException(e);
			
		}
		
		
		
		return row;
		
		
	}
	
	private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }


}
