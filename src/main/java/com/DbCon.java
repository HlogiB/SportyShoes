package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {   
	public Connection getCon() throws SQLException {
		
		Connection connection=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sportyshoes";
			String user="root";
			String passwordDB="#Elebaby";
		    connection = DriverManager.getConnection(url,user,passwordDB);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	return connection;
}}

