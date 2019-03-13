package com.prince;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.prince.entities.NGO;
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

	//fetching all Police
		public List<Police> getAllPolice(){
			Session session=sf.openSession();
			Query query=session.createQuery("from police");
			List<Police> flist=query.list();
			
	/*		Criteria cr=session.createCriteria(Police.class);
			List<Friend> flist=cr.list();
	*/		session.close();
			return flist;
			
		}
		// remove Police
		public void removeById(String id){
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Police n=new Police(); n.setEmail(id);
			session.delete(n);
			tr.commit();
			session.close();
		}
}