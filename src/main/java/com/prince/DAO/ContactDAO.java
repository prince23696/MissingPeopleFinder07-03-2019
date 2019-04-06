package com.prince.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.prince.Data;
import com.prince.entities.Contact;
import com.prince.entities.NGO;

public class ContactDAO {

	SessionFactory sf;

	public ContactDAO() {
		sf = Data.getSF();
	}

	// adding new FeedBack
	public void addContact(Contact contact) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(contact);
		tr.commit();
		session.close();
	}

	// searching Contact by id
	public Contact searchById(String email) {
		Session session = sf.openSession();
		Contact co = session.get(Contact.class, email);
		session.close();
		return co;
	}

	// fetching all Contact
	public List<Contact> getAllContact() {
		Session session = sf.openSession();
		Query query = session.createQuery("from contact");
		List<Contact> flist = query.list();

		/*
		 * Criteria cr=session.createCriteria(Contact.class); List<Friend>
		 * flist=cr.list();
		 */session.close();
		return flist;

	}
	//remove a feedback
		public void removeById(String id){
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Contact n=new Contact(); n.setEmail(id);
			session.delete(n);
			tr.commit();
			session.close();
		}
}
