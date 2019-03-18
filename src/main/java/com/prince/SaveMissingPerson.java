package com.prince;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

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
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		try {
			List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));
		} catch (Exception e) {
			
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
//			   String sql="insert into missingperson values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
//	            Class.forName("com.mysql.jdbc.Driver");
//	            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booksdata", "root", "root");
//	            PreparedStatement ps=con.prepareStatement(sql);
//	            ps.setInt(1, Integer.parseInt(s1));
//	            ps.setString(2, s2);
//	            ps.setInt(3, Integer.parseInt(s3));
//	            ps.setBytes(4, b);
//	            ps.executeUpdate();			// process the data
//			String a = "2";
//			MissingPerson mp = new MissingPerson(a, status, name, dob, gender,
//					area, address, mobile, complextion, hair, identity, build,
//					height, outfit, last_seen, extra, b);
//			MissingDAO md = new MissingDAO();
//			md.addReport(mp);
			// response
			response.sendRedirect("Display.jsp");

		}
	}
}