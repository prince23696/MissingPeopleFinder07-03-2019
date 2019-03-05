package com.prince;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.prince.entities.NGO;
import com.prince.entities.Police;
import com.prince.entities.User;

public class VerifyUser extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username = request.getParameter("userid");
		String password = request.getParameter("password");
		String type = request.getParameter("utype");
			
		if (type.equals("User")) {

			UserDAO dao=new UserDAO();
			User u=dao.searchById(username);
			if (username.equalsIgnoreCase(u.getEmail())) 
					if(password.equals(u.getPassword())){
						
						// storing the userid to session object
						// step-1 (fetch the session created for this user
						HttpSession session = request.getSession();
						// step-2 (store the data to session)
						session.setAttribute("user", username);
						session.setAttribute("password",password );
						response.sendRedirect("UserDashboard.jsp");
					}
			
		
			else{
				out.println("Invalid Account");
			}
		}
			
		else if (type.equals("Police"))
		{
			PoliceDAO d=new PoliceDAO();
			Police p=d.searchById(username);
			if (username.equalsIgnoreCase(p.getEmail())) 
					if(password.equals(p.getPassword())){
				
				// storing the userid to session object
				// step-1 (fetch the session created for this user
				HttpSession session = request.getSession();
				// step-2 (store the data to session)
				session.setAttribute("user", username);
				session.setAttribute("password",password );
				response.sendRedirect("PoliceDashboard.jsp");
				}

				else {
					out.println("Invalid Account");
				}
			}
		else if (type.equals("NGO")) {

			NGODAO d=new NGODAO();
			NGO n=d.searchById(username);
			if (username.equalsIgnoreCase(n.getEmail())) 
					if(password.equals(n.getPassword())){
				
				// storing the userid to session object
				// step-1 (fetch the session created for this user
				HttpSession session = request.getSession();
				// step-2 (store the data to session)
				session.setAttribute("user", username);
				session.setAttribute("password",password );
				response.sendRedirect("NGODashboard.jsp");
			}

			else {
				out.println("Invalid Account");
			}
		}
		else if (type.equals("Admin")) {

			if (username.equals("prince") || username.equals("PRINCE")) {
				// storing the userid to session object
				// step-1 (fetch the session created for this user
				HttpSession session = request.getSession();
				// step-2 (store the data to session)
				session.setAttribute("user", username);
				session.setAttribute("password",password );
				response.sendRedirect("AdminDashboard.jsp");
			}

			else {
				out.println("Invalid Account");
			}
		}
		 else {
			out.println("Invalid Account");
		}
	}

}
