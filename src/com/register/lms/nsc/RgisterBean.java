package com.register.lms.nsc;

public class RgisterBean 
{
	private static final long serialVersionUID = 1L;
	private static String username;
	private static String password;
	private static String email;
	
	public static String getUsername() {
		return username;
	}
	public static void setUsername(String username) {
		RgisterBean.username = username;
	}
	public static String getPassword() {
		return password;
	}
	public static void setPassword(String password) {
		RgisterBean.password = password;
	}
	public static String getEmail() {
		return email;
	}
	public static void setEmail(String email) {
		RgisterBean.email = email;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
