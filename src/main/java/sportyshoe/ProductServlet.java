package sportyshoe;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();
        products.add(new Product("Running Shoe 1", 99.99, "exm1.jpg"));
        products.add(new Product("Basketball Shoe 1", 129.99, "exm1.jpg"));

        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/sportyshoe/src/main/webapp/products.jsp");
        dispatcher.forward(request, response);
    }
}

