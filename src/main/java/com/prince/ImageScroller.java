package com.prince;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import com.prince.entities.MissingPerson;

public class ImageScroller extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Session session1 = Data.getSF().openSession();
		Criteria cr = session1.createCriteria(MissingPerson.class);
		List<MissingPerson> flist = cr.list();
		for (MissingPerson f : flist) {

			try {
				String sql = "select image from missingperson where id=?";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/missingpeople", "root",
						"root");
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, f.getId());
				ResultSet rs = ps.executeQuery();
				rs.next();
				byte b[] = rs.getBytes(1);
				ServletOutputStream out = response.getOutputStream();
				out.write(b);
				out.close();
				con.close();
			} catch (Exception e) {

			}
		}
	}
}