package com.prince;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prince.DAO.ContactDAO;

public class RemoveFeedback extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		ContactDAO dao = new ContactDAO();
		dao.removeById(id);
		response.sendRedirect("DeleteContact.jsp");
	}

}
