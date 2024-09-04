package com.kh.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.model.vo.Person;

/**
 * Servlet implementation class OperatorServlet
 */
@WebServlet("/operator.do")
public class OperatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperatorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("big", 10000);
		request.setAttribute("small", 10);
		
		request.setAttribute("s1", "배고파");
		request.setAttribute("s2", "");
		request.setAttribute("s3", "힘내!!");
		request.setAttribute("s4", "");
		
		request.setAttribute("p1", new Person("카리나", 24, "여자"));
		request.setAttribute("p2", null);
		
		ArrayList<String> list1 = new ArrayList<>();
		request.setAttribute("l1", list1);
		
		ArrayList<String> list2 = new ArrayList<String>();
		list2.add("Drama");
		list2.add("Armageddon");
		request.setAttribute("l2", list2);
		
		request.getRequestDispatcher("views/1_EL/02_elOperator.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
