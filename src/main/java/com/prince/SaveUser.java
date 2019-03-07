package com.prince;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.prince.entities.User;
public class SaveUser extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//read the data
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		//process the data
		User u=new User(email,password,name,address,mobile,dob,gender);
		UserDAO ud=new UserDAO();
		ud.addUser(u);
		
		//response
		PrintWriter out=response.getWriter();
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
		out.println("<a href=index.jsp> Home</a>");
		out.println("<a href=registration.jsp>Register-More!!!-Click Here.</a>");

	}

}
