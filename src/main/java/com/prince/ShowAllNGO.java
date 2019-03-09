package com.prince;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.prince.entities.NGO;
import com.prince.entities.User;
public class ShowAllNGO extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		
		NGODAO dao=new NGODAO();
		Session session=Data.getSF().openSession();
		//fetching using QBC
		
		Criteria cr=session.createCriteria(NGO.class);
		List<NGO> flist=cr.list();
		out.println("<html>");
		out.println("<body>");
		out.println("<h3>All-NGO-List</h3>");
		out.println("<form action=RemoveAll>");
		out.println("<table border=2>");
		out.println("<tr>");
		out.println("<th>FCode</th><th>Name</th><th>Address</th><th>Mobile</th><th>Email</th><th>Del</th>");
		out.println("</tr>");
		
		for(NGO f:flist){
			
			out.println("<tr>");
			out.println("<td>"+f.getName()+"</td>");
			out.println("<td>"+f.getEmail());
			out.println("<td>"+f.getPassword());
			//out.println("<td>"+f.getDob());
			out.println("<td>"+f.getMobile());
			out.println("<td>"+f.getAcc_status());
			out.println("<td>"+f.getAddress());
			//out.println("<td>"+f.getGender());
			out.println("<td>"+f.getRegi_no());
			out.println("<td>"+f.getTrusty());
			out.println("<td>"+f.getDor());
			out.println("</tr>");
		}
		out.println("</table>");
		out.println("</form>");
		out.println("<h5><a href=index.jsp>Home</a></h5>");
		out.println("</body>");
		out.println("</html>");
		out.close();
		
		
	}

}