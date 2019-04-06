package com.prince;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prince.DAO.MissingDAO;

public class RemoveAllReport extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String s[] = request.getParameterValues("id");
		int[] verify2 = new int[s.length];
		for(int i=0;i<s.length;i++){
            verify2[i]=Integer.parseInt(s[i]);
        }

		MissingDAO dao = new MissingDAO();
		for (int id : verify2) {
			dao.removeById(id);
		}
		response.sendRedirect("DeleteReport.jsp");
	}
}
