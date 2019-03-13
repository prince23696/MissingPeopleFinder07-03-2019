package com.prince;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.prince.entities.MissingPerson;

public class SaveMissingPerson extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// read the data
		String status = request.getParameter("status");
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String area = request.getParameter("area");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String complextion = request.getParameter("complextion");
		String hair = request.getParameter("hair");
		String identity = request.getParameter("identi_mark");
		String build = request.getParameter("build");
		String height = request.getParameter("height");
		String outfit = request.getParameter("outfit");
		String last_seen = request.getParameter("last_seen");
		String extra = request.getParameter("extra");
		String image = request.getParameter("image");
		// process the data
		String a="0";
		MissingPerson mp = new MissingPerson(a,status,name, dob, gender, area, address,
				mobile, complextion, hair, identity, build, height, outfit,
				last_seen, extra, image);
		MissingDAO md= new MissingDAO();
		md.addReport(mp);
		// response
		response.sendRedirect("Display.jsp");

	}
}
