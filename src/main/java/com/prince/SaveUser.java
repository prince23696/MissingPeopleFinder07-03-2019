package com.prince;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.prince.DAO.UserDAO;
import com.prince.entities.User;
public class SaveUser extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	response.sendRedirect("Display.jsp");


	}

}
