package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class orderRequest
 */
@WebServlet("/orderPizza.do")
public class orderRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String userTel = request.getParameter("userTel");
		String userAddr = request.getParameter("userAddr");
		String reqText = request.getParameter("reqText");
		String pzCategory = request.getParameter("pzCategory");
		String[] topping = request.getParameterValues("topping");
		String[] side = request.getParameterValues("side");
		
		request.setAttribute("userName", userName);
		request.setAttribute("userTel", userTel);
		request.setAttribute("userAddr", userAddr);
		request.setAttribute("reqText", reqText);
		request.setAttribute("pzCategory", pzCategory);
		request.setAttribute("topping", topping);
		request.setAttribute("side", side);
		
		request.getRequestDispatcher("views/pizza/pizzaPayment.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
