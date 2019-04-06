package com.prince;

import java.io.IOException;
import java.sql.Blob;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.prince.DAO.MissingDAO;
import com.prince.entities.MissingPerson;

public class UpdateMissing extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// read the data
		String status = request.getParameter("status");
			HttpSession session = request.getSession();
			MissingPerson mp = (MissingPerson) session.getAttribute("missingperson");
			mp.setStatus(status);
			MissingDAO md = new MissingDAO();
			md.UpdateMissing(mp);
			session.setAttribute("missingperson", mp);
			response.sendRedirect("ShowMissing.jsp");
		}
	}