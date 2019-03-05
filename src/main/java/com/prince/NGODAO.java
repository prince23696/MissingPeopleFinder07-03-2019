package com.prince;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.prince.entities.NGO;
import com.prince.entities.User;

public class NGODAO {

	SessionFactory sf;

	public NGODAO() {
		sf = Data.getSF();
	}

	// adding a new NGO
	public void addNGO(NGO NGO) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(NGO);
		tr.commit();
		session.close();
	}
	//searching User by id
	public NGO searchById(String username){
		Session session=sf.openSession();
		NGO ud=session.get(NGO.class,username);
		session.close();
		return ud;
	}

}
