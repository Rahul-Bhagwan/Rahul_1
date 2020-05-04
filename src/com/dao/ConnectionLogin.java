package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.LoginBean;

public class ConnectionLogin {
	
	boolean log;
	public boolean login(LoginBean loginbean) throws ClassNotFoundException
	{
		try{
			String sql="select * from dbo.Log where first_name=? and last_name=? and email=? and password=?";	  
			
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
			  
			  
Connection con=DriverManager.getConnection("jdbc:sqlserver://DESKTOP-UJ1PLFB:1433;databaseName=First;user=sa;password=123");  
			 
 

		PreparedStatement stmt=con.prepareStatement(sql);  
			  
			
			stmt.setString(1, loginbean.getFirst_name());
			stmt.setString(2, loginbean.getLast_name());
			stmt.setString(3, loginbean.getEmail());
			stmt.setString(4, loginbean.getPassword());
			
			
			ResultSet rs=stmt.executeQuery();
			log=rs.next();
			
			  
			  
			}
		catch(SQLException e)
			{ 
			e.printStackTrace();
			}
		return log;  
			  
	}

	
	
	
	
	
	

}
