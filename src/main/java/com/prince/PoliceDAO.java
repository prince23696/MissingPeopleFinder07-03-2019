package com.prince;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.prince.entities.Police;
import com.prince.entities.User;

public class PoliceDAO {

	SessionFactory sf;

	public PoliceDAO() {
		sf = Data.getSF();
	}

	// adding a new Police
	public void addPolice(Police Police) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(Police);
		tr.commit();
		session.close();
	}
	//searching Police by id
	public Police searchById(String username){
		Session session=sf.openSession();
		Police p=session.get(Police.class,username);
		session.close();
		return p;
	}

}
