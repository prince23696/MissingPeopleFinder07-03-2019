package com.prince;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.prince.entities.Police;

public class SavePolice extends HttpServlet {
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// read the data
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");

		String police_id = request.getParameter("police_id");
		String station_no = request.getParameter("station_no");
		String area = request.getParameter("Area");

		// process the data
		Police n = new Police(email, password, name, address, mobile, gender,
				police_id, station_no, area);
		PoliceDAO ud = new PoliceDAO();
		ud.addPolice(n);

		// response
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>");
		out.println("Missing-People-Finder");
		out.println("</title>");
		out.println("<head>");
		out.println("<body>");
		out.println("<h2>Account Created Successfully</h2>");
		out.println("</body>");
		out.println("</html>");
		out.println("<hr>");
		out.println("<a href=index.jsp> Home</a><br>");
		out.println("<a href=policeregistration.jsp>Register-More!!!-Click Here.</a>");

	}

}
