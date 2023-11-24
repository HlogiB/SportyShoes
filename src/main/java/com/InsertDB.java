package com;

import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

public class InsertDB {
	public void insertShoeSales( Connection connection,String CustomerID, String shoes,String total ) throws SQLException
	{
		String insertQuery= "Insert into sportysales values (?,?,?,?)";
	
			try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
			    preparedStatement.setString(1, generateRandomString(6));
			    preparedStatement.setString(2, CustomerID);
			    preparedStatement.setString(3, shoes);
			    preparedStatement.setString(4, total);
			    preparedStatement.executeUpdate();
			}
	 
	}
	
	private static String generateRandomString(int length) {
        String CHARACTERS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder sb = new StringBuilder(length);
        SecureRandom random = new SecureRandom();
        while (sb.length() < length) {
            int index = random.nextInt(CHARACTERS.length());
            sb.append(CHARACTERS.charAt(index));
        }
        return sb.toString();
    }
		
	
	public boolean checkUser(Connection connection , String username, String password)
	{
		String checkQuery = "SELECT * FROM users WHERE username = ? AND password = ?";
		try (PreparedStatement preparedStatement = connection.prepareStatement(checkQuery)) {
		    preparedStatement.setString(1, username);
		    preparedStatement.setString(2, password);

		    ResultSet resultSet = preparedStatement.executeQuery();
		    if (resultSet.next()) {
		        return true;
		    } 
		} catch (SQLException e) {
		    // Handle any SQL exceptions here
		    e.printStackTrace();
		}		
		return false;
		
	}
	
	

}
