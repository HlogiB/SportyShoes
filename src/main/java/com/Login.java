package com;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw =response.getWriter();
		pw.println("<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "    <title>Login Page</title>\r\n"
				+ "    <style>\r\n"
				+ "        body {\r\n"
				+ "            font-family: Arial, sans-serif;\r\n"
				+ "            background-color: #f0f0f0;\r\n"
				+ "            margin: 0;\r\n"
				+ "            padding: 0;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        h1, footer {\r\n"
				+ "            background-color: #333;\r\n"
				+ "            color: #fff;\r\n"
				+ "            text-align: center;\r\n"
				+ "            padding: 10px;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        form {\r\n"
				+ "            max-width: 400px;\r\n"
				+ "            margin: 0 auto;\r\n"
				+ "            background-color: #fff;\r\n"
				+ "            padding: 20px;\r\n"
				+ "            border-radius: 5px;\r\n"
				+ "            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        label {\r\n"
				+ "            display: block;\r\n"
				+ "            margin-top: 10px;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        input[type=\"text\"],\r\n"
				+ "        input[type=\"password\"] {\r\n"
				+ "            width: 100%;\r\n"
				+ "            padding: 10px;\r\n"
				+ "            margin-top: 5px;\r\n"
				+ "            border: 1px solid #ccc;\r\n"
				+ "            border-radius: 3px;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        input[type=\"submit\"],\r\n"
				+ "        input[type=\"reset\"] {\r\n"
				+ "            background-color: #333;\r\n"
				+ "            color: #fff;\r\n"
				+ "            padding: 10px 20px;\r\n"
				+ "            border: none;\r\n"
				+ "            border-radius: 3px;\r\n"
				+ "            cursor: pointer;\r\n"
				+ "            margin-top: 10px;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        input[type=\"submit\"]:hover,\r\n"
				+ "        input[type=\"reset\"]:hover {\r\n"
				+ "            background-color: #555;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .button-container {\r\n"
				+ "            text-align: center;\r\n"
				+ "        }\r\n"
				+ "        \r\n"
				+ "        .register-link {\r\n"
				+ "            text-align: center;\r\n"
				+ "            margin-top: 20px;\r\n"
				+ "        }\r\n"
				+ "    </style>\r\n"
				+ "</head>\r\n"
				+ "<body onload=\"resetForm()\">\r\n"
				+ "    <h1>Login</h1>\r\n"
				+ "    <form method=\"get\" action=\"LoginServlet\" id=\"loginForm\">\r\n"
				+ "        <label for=\"username\">User name:</label>\r\n"
				+ "        <input type=\"text\" id=\"username\" name=\"username\" required autocomplete=\"off\">\r\n"
				+ "        \r\n"
				+ "        <label for=\"password\">Password:</label>\r\n"
				+ "        <input type=\"password\" id=\"password\" name=\"password\" required autocomplete=\"off\">\r\n"
				+ "       \r\n"
				+ "        <div class=\"button-container\">\r\n"
				+ "            <input type=\"submit\" value=\"Login\">\r\n"
				+ "            <input type=\"reset\" value=\"Clear\">\r\n"
				+ "        </div>\r\n"
				+ "    </form>\r\n"
				+ "    \r\n"
				+ "    <div class=\"register-link\">\r\n"
				+ "        <p>Don't have an account? <a href=\"UserReg.jsp\">Register</a></p>\r\n"
				+ "    </div>\r\n"
				+ "    \r\n"
				+ "    <script>\r\n"
				+ "        function resetForm() {\r\n"
				+ "            document.getElementById(\"loginForm\").reset();\r\n"
				+ "        }\r\n"
				+ "    </script>\r\n"
				+ "\r\n"
				+ "    <footer>\r\n"
				+ "        Developed by Elelwani Magoba<br>\r\n"
				+ "        You can contact me at email: <a href=\"mailto:elelwanimagoba@gmail.com\">elelwanimagoba@gmail.com</a>\r\n"
				+ "    </footer>\r\n"
				+ "</body>\r\n"
				+ "</html>\r\n"
				+ "");
	}

}
