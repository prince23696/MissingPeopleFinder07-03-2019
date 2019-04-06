package com.prince;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.prince.entities.MissingPerson;

public class UpdateMissingEditcontroller extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		Session sf = Data.getSF().openSession();
		MissingPerson id1 = sf.get(MissingPerson.class, id);
		HttpSession session = request.getSession();
		session.setAttribute("missingperson",id1);
		response.sendRedirect("UpdateMissing.jsp");

	}
	
}
