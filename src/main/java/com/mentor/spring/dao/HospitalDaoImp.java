package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mentor.spring.model.Doctor;
import com.mentor.spring.model.Hospital;

@Repository
public class HospitalDaoImp implements HospitalDao {

	@Autowired
	private SessionFactory factory;

	@Override
	public List<Hospital> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Hospital> query=factory.getCurrentSession().createQuery("from Hospital ORDER BY hospitalid DESC");
		return query.getResultList();
	}

	@Override
	public int add(Hospital hospital) {
		// TODO Auto-generated method stub
		return  (int) factory.getCurrentSession().save(hospital);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Hospital> query=factory.getCurrentSession().createQuery("delete from Hospital where hospitalid="+id+"");
		return 	query.executeUpdate();
	}

}
