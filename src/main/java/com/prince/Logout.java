package com.prince;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Logout extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("user");
		if (username == null) {
			response.sendRedirect("index.jsp");
		}
		else{
		session.invalidate();
		response.sendRedirect("Login.jsp");
	}
	}	

}
