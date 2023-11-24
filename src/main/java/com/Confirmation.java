package com;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.DbCon;
import com.InsertDB;


public class Confirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Confirmation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userid=request.getParameter("userid");
		String total=request.getParameter("Total");
		String items=request.getParameter("Items");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phonenumeber");
		
		InsertDB inDB= new InsertDB();
		
		DbCon connection =new DbCon();
		
	    try {
	    inDB.insertShoeSales(connection.getCon(),userid,items,total);
	 
       
	   
	    
	    }  catch (SQLException e) {
	    	response.sendRedirect("Error");
	        //System.err.println("Error connecting to the database: " + e.getMessage());
	    }
		
		
		
	}

}

