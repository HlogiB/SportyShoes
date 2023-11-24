package com;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class UserBookingConfirmaion
 */
public class GetCustomerID extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCustomerID() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        
	        DbCon con= new DbCon()
;	        // Assuming you have a valid database connection, retrieve the data from the database
	        Connection connection = null;
			try {
				connection = con.getCon();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // Replace with your actual connection code
	        if (connection != null) {
	            try {
	                java.sql.Statement statement = connection.createStatement();
	                String query = "SELECT * from customer where customerid = 125648";
	                ResultSet resultSet = statement.executeQuery(query);

	                // Generate HTML table to display the data
	                out.println("<style>\r\n"
	                		+ "        font-family: 'Arial', sans-serif;\r\n"
	                		+ "            margin: 0;\r\n"
	                		+ "            padding: 0;\r\n"
	                		+ "            background-color: #f4f4f4;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        header {\r\n"
	                		+ "            background-color: #333;\r\n"
	                		+ "            color: white;\r\n"
	                		+ "            padding: 20px;\r\n"
	                		+ "            text-align: center;\r\n"
	                		+ "            position: fixed;\r\n"
	                		+ "            width: 100%;\r\n"
	                		+ "            top: 0;\r\n"
	                		+ "            z-index: 1000;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        h1 {\r\n"
	                		+ "            margin: 40px 0 20px;\r\n"
	                		+ "            text-align: center;\r\n"
	                		+ "            color: #333;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        table {\r\n"
	                		+ "            width: 80%;\r\n"
	                		+ "            margin: 20px auto;\r\n"
	                		+ "            border-collapse: collapse;\r\n"
	                		+ "            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\r\n"
	                		+ "            background-color: #fff;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        th, td {\r\n"
	                		+ "            border: 1px solid #ddd;\r\n"
	                		+ "            padding: 15px;\r\n"
	                		+ "            text-align: left;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        th {\r\n"
	                		+ "            background-color: #4CAF50;\r\n"
	                		+ "            color: white;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        tr:hover {\r\n"
	                		+ "            background-color: #f5f5f5;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        /* Additional Styles */\r\n"
	                		+ "        body {\r\n"
	                		+ "            font-family: 'Arial', sans-serif;\r\n"
	                		+ "            margin: 0;\r\n"
	                		+ "            padding: 0;\r\n"
	                		+ "            background-color: #f4f4f4;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        header {\r\n"
	                		+ "            background-color: #333;\r\n"
	                		+ "            color: white;\r\n"
	                		+ "            padding: 20px;\r\n"
	                		+ "            text-align: center;\r\n"
	                		+ "            position: fixed;\r\n"
	                		+ "            width: 100%;\r\n"
	                		+ "            top: 0;\r\n"
	                		+ "            z-index: 1000;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        h1 {\r\n"
	                		+ "            margin: 40px 0 20px;\r\n"
	                		+ "            text-align: center;\r\n"
	                		+ "            color: #333;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        table {\r\n"
	                		+ "            width: 80%;\r\n"
	                		+ "            margin: 20px auto;\r\n"
	                		+ "            border-collapse: collapse;\r\n"
	                		+ "            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\r\n"
	                		+ "            background-color: #fff;\r\n"
	                		+ "            border-radius: 8px;\r\n"
	                		+ "            overflow: hidden;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        th, td {\r\n"
	                		+ "            border: 1px solid #ddd;\r\n"
	                		+ "            padding: 15px;\r\n"
	                		+ "            text-align: left;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        th {\r\n"
	                		+ "            background-color: #4CAF50;\r\n"
	                		+ "            color: white;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        tr:hover {\r\n"
	                		+ "            background-color: #f5f5f5;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        /* Responsive Design */\r\n"
	                		+ "        @media only screen and (max-width: 768px) {\r\n"
	                		+ "            table {\r\n"
	                		+ "                width: 100%;\r\n"
	                		+ "            }\r\n"
	                		+ "        }"
	                		+ "        }\r\n"
	                		+ "    </style>");
	                out.println("<html><head><title>Flight List</title></head><body>");
	                out.println("<h1>Customer By ID </h1>");
	                out.println("<table border='1'><tr><th>Customer Unique Identifier</th><th>Customer Name</th><th>CustomerEmail </th><th>CustomerEmail</th><th>CustomerAddress</th><th></tr>");

	                while (resultSet.next()) {
	                    out.println("<tr>");
	                    out.println("<td>" + resultSet.getString("CustomerID") + "</td>");
	                    out.println("<td>" + resultSet.getString("fullname") + "</td>");
	                    
	                    out.println("<td>" + resultSet.getString("email") + "</td>");
	                    out.println("<td>" + resultSet.getString("PhoneNumber") + "</td>");
	                    out.println("<td>" + resultSet.getString("Address") + "</td>");
	              
	                    out.println("</tr>");
	                }

	                out.println("<a href=\"MainPage.jsp\" id=\"back-to-store\">Back Admin Page</a>");
	            } catch (SQLException e) {
	                e.printStackTrace();
	                out.println("An error occurred while retrieving data from the database.");
	            }
	}

}
}