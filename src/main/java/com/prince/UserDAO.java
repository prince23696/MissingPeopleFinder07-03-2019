package com.prince;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.prince.entities.User;

public class UserDAO {

	SessionFactory sf;

	public UserDAO() {
		sf = Data.getSF();
	}

	// adding a new User
	public void addUser(User User) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(User);
		tr.commit();
		session.close();
	}
	//fetching all Users
	public List<User> getAllFriends(){
		Session session=sf.openSession();
		Query query=session.createQuery("from Friend");
		List<User> flist=query.list();
		return flist;

	}
	//searching User by name
	public List<User> searchByUsername(String username){
		Session session=sf.openSession();
		Criteria cr=session.createCriteria(User.class);
		Criterion crt=Restrictions.eq("email",username );
		cr.add(crt);
		List<User> flist=cr.list();
		session.close();
		return flist;
	}
	//searching User by id
	public User searchById(String username){
		Session session=sf.openSession();
		User ud=session.get(User.class,username);
		session.close();
		return ud;
	}

	
}
