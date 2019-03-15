package com.prince;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RemoveAllReport extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String s[] = request.getParameterValues("id");
		MissingDAO dao = new MissingDAO();
		for (String id : s) {
			dao.removeById(id);
		}
		response.sendRedirect("DeleteReport.jsp");
	}
}
