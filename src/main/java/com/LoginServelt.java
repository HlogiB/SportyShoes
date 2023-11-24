package com;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginServelt
 */
@WebServlet("/LoginServlet")
public class LoginServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServelt() {
        super();
        // TODO Auto-generated constructor stub
    }
    public String user;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		//InsertDB dB = new InsertDB();
		PrintWriter pw =response.getWriter();
		
		 
		 String userName;
		 String password; 
		 
		 
		 userName=request.getParameter("username");
		 password=request.getParameter("password");	
	
		
		InsertDB inDB= new InsertDB();
		DbCon connection =new DbCon();
		
		
		
	    try {
	    	boolean validUser =inDB.checkUser(connection.getCon(),userName,password);
	    	
	    if(validUser)   {
	    	
	    	if("Admin".equalsIgnoreCase(userName))
	    	{
	    		response.sendRedirect("Admin");	
	    	}
	    	else
	    	{
	    		response.sendRedirect("Booking");	
	    		 user=userName;
	    	}
	    	
	    	//response.sendRedirect("Admin");
	    	//pw.println("<h1>Hello, "+userName);
	    }
	    else
	    {
	    	response.sendRedirect("Error");
	    }
	   
	    
	    }  catch (SQLException e) {
	        System.err.println("Error connecting to the database: " + e.getMessage());
	    }
		
		pw.close();
		
		
		
		
	}
	
	

    	
}
