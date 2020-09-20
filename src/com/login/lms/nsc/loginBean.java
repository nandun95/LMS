package com.login.lms.nsc;

public class loginBean {
	
	private static final long serialVersionUID = 1L;
	private static String username;
	private static String password;
	
	public static String getUsername() {
		return username;
	}
	public static void setUsername(String username) {
		loginBean.username = username;
	}
	public static String getPassword() {
		return password;
	}
	public static void setPassword(String password) {
		loginBean.password = password;
	}
	
	

}
