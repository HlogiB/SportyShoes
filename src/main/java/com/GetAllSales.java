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
public class GetAllSales extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllSales() {
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
	                String query = "select fullname,shoe,total from customer c, sportysales s where c.customerid=s.customerid";
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
	                		+ "                width: 100%;\r\n footer {\r\n"
	                		+ "            background-color: #333;\r\n"
	                		+ "            color: white;\r\n"
	                		+ "            text-align: center;\r\n"
	                		+ "            padding: 15px;\r\n"
	                		+ "            position: fixed;\r\n"
	                		+ "            width: 100%;\r\n"
	                		+ "            bottom: 0;\r\n"
	                		+ "        }\r\n"
	                	
	                		+ "        footer a {\r\n"
	                		+ "            color: #4CAF50;\r\n"
	                		+ "            text-decoration: none;\r\n"
	                		+ "        }\r\n"
	                		
	                		+ "        footer a:hover {\r\n"
	                		+ "            text-decoration: underline;\r\n"
	                		+ "        }   #back-to-store {\r\n"
	                		+ "            margin-top: 20px;\r\n"
	                		+ "            padding: 10px 20px;\r\n"
	                		+ "            background-color: #333;\r\n"
	                		+ "            color: white;\r\n"
	                		+ "            text-decoration: none;\r\n"
	                		+ "            border-radius: 5px;\r\n"
	                		+ "            cursor: pointer;\r\n"
	                		+ "        }\r\n"
	                		+ "\r\n"
	                		+ "        #back-to-store:hover {\r\n"
	                		+ "            background-color: #555;\r\n"
	                		+ "        }"
	                		
	                		
	                		
	                		+ "            }\r\n"
	                		+ "        }"
	                		+ "        }\r\n"
	                		+ "    </style>");
	                out.println("<html><head><title>List of Customers</title></head><body>");
	                out.println("<h1>Sales list  </h1>");
	                out.println("<table border='1'><tr><th>Customer Name</th><th>Products Purchased</th><th>Total </th></tr>");

	                while (resultSet.next()) {
	                    out.println("<tr>");
	                    
	                    out.println("<td>" + resultSet.getString("Fullname") + "</td>");	                    
	                    out.println("<td>" + resultSet.getString("shoe") + "</td>");
	                    out.println("<td>" + resultSet.getString("total") + "</td>");	                    
	              
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