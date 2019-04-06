package com.prince;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prince.DAO.PoliceDAO;

public class RemovePolice extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id=request.getParameter("id");
		PoliceDAO dao=new PoliceDAO();
		dao.removeById(id);
		response.sendRedirect("TerminatePolice.jsp");
	}

}
