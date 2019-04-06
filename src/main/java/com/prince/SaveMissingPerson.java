package com.prince;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.prince.DAO.MissingDAO;
import com.prince.entities.MissingPerson;

public class SaveMissingPerson extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// read the data
		String status = "";
		String name = "";
		String dob = "";
		String gender = "";
		String area = "";
		String address = "";
		String mobile = "";
		String complextion = "";
		String hair = "";
		String identity = "";
		String build = "";
		String height = "";
		String outfit = "";
		String last_seen = "";
		String extra = "";
		byte b[] = null;
		Blob b1 = null;
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List<FileItem> items = null;
		try {
			items = upload.parseRequest(new ServletRequestContext(request));
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		for (FileItem item : items) {
			String n = item.getFieldName();
			if (n.equals("status")) {
				status = item.getString();
			} else if (n.equals("name")) {
				name = item.getString();
			} else if (n.equals("dob")) {
				dob = item.getString();
			} else if (n.equals("gender")) {
				gender = item.getString();
			} else if (n.equals("area")) {
				area = item.getString();
			} else if (n.equals("address")) {
				address = item.getString();
			} else if (n.equals("mobile")) {
				mobile = item.getString();
			} else if (n.equals("complextion")) {
				complextion = item.getString();
			} else if (n.equals("hair")) {
				hair = item.getString();
			} else if (n.equals("identi_mark")) {
				identity = item.getString();
			} else if (n.equals("build")) {
				build = item.getString();
			} else if (n.equals("height")) {
				height = item.getString();
			} else if (n.equals("outfit")) {
				outfit = item.getString();
			} else if (n.equals("last_seen")) {
				last_seen = item.getString();
			} else if (n.equals("extra")) {
				extra = item.getString();
			} else if (n.equals("image")) {
				b = item.get();
			}
			try {
				b1 = new SerialBlob(b);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		MissingPerson mp = new MissingPerson(status, name, dob, gender, area,
				address, mobile, complextion, hair, identity, build, height,
				outfit, last_seen, extra, b1);
		MissingDAO md = new MissingDAO();
		md.addReport(mp);
		response.sendRedirect("Display.jsp");
	}
}