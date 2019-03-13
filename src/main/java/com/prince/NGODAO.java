package com.prince;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.prince.entities.NGO;

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
	//fetching all NGO
	public List<NGO> getAllNGO(){
		Session session=sf.openSession();
		Query query=session.createQuery("from ngo");
		List<NGO> flist=query.list();		
/*		Criteria cr=session.createCriteria(NGO.class);
		List<Friend> flist=cr.list();
*/		session.close();
		return flist;
		
	}
	//remove a NGO
	public void removeById(String id){
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		NGO n=new NGO(); n.setEmail(id);
		session.delete(n);
		tr.commit();
		session.close();
	}
	

}