package com.prince;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prince.DAO.NGODAO;
import com.prince.entities.NGO;

public class SaveNGO extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// read the data
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String regi_no = request.getParameter("regi_no");
		String dor=request.getParameter("dor");
		String trusty = request.getParameter("trusty");
		String area = request.getParameter("Area");

		// process the data
		NGO n = new NGO(email, password, name, address, mobile,	regi_no,dor, trusty, area);
		NGODAO ud = new NGODAO();
		ud.addNGO(n);

		// response
		response.sendRedirect("Display.jsp");

	}

}
