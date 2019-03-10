package com.prince;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import com.prince.entities.MissingPerson;

public class MissingDAO {

	SessionFactory sf;

	public MissingDAO() {
		sf = Data.getSF();
	}

	// adding a new Missing-Report
	public void addReport(MissingPerson missingperson) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.save(missingperson);
		tr.commit();
		session.close();
	}

	// searching Person by id
	public MissingPerson searchById(String id) {
		Session session = sf.openSession();
		MissingPerson mp = session.get(MissingPerson.class,id);
		session.close();
		return mp;
	}
	
	//searching Missing-Report by name
		public List<MissingPerson> searchByName(String name){
			Session session=sf.openSession();
			Criteria cr=session.createCriteria(MissingPerson.class);
			Criterion crt=Restrictions.eq("name", name);
			cr.add(crt);
			List<MissingPerson> flist=cr.list();
			session.close();
			return flist;
		}
		//fetching all Records
		public List<MissingPerson> getAllReports(){
			Session session=sf.openSession();
			Query query=session.createQuery("from missingperson");
			List<MissingPerson> flist=query.list();
			
	/*		Criteria cr=session.createCriteria(Friend.class);
			List<Friend> flist=cr.list();
	*/		session.close();
			return flist;
			
		}
		//remove a friend
		public void removeById(String id){
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
		//	MissingPerson mp=new MissingPerson(); mp.setId(id);
		//	session.delete(mp);
			tr.commit();
			session.close();
		}

}
