package com.prince;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.prince.entities.NGO;

public class SaveNGO extends HttpServlet {
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// read the data
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String mobile = request.getParameter("mobile");
		String regi_no = request.getParameter("regi_no");
		String trusty = request.getParameter("trusty");
		String area = request.getParameter("area");

		// process the data
		NGO n = new NGO(email, password, name, address, mobile,	regi_no, trusty, area);
		NGODAO ud = new NGODAO();
		ud.addNGO(n);

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
		out.println("<a href=ngoregistration.jsp>Register-More!!!-Click Here.</a>");

	}

}
