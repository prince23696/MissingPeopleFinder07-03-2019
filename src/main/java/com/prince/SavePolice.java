package com.prince;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prince.DAO.PoliceDAO;
import com.prince.entities.Police;

public class SavePolice extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// read the data
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String dob=request.getParameter("dob");
		String police_id = request.getParameter("police_id");
		String station_no = request.getParameter("station_no");
		String area = request.getParameter("Area");

		// process the data
		Police n = new Police(email, password, name, address, mobile, gender,dob,
				police_id, station_no, area);
		PoliceDAO ud = new PoliceDAO();
		ud.addPolice(n);

		// response
		
		response.sendRedirect("Display.jsp");

	}

}
