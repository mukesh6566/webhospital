package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mentor.spring.model.Patient;

@Repository
public class PatientDaoImp implements PatientDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public int save(Patient patient) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(patient);
	}

	@Override
	public List<Patient> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Patient> query=factory.getCurrentSession().createQuery("from  Patient ORDER BY id DESC");
		return query.getResultList();
	}

	@Override
	public List<Patient> listPatientByDate(String startdate, String enddate) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Patient> query=factory.getCurrentSession().createQuery("from  Patient where admitdate between '"+startdate+"' and '"+enddate+"'");
		return query.getResultList();
	}

	@Override
	public List<Patient> listPatientByDocId(String startdate, String enddate, String docname) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Patient> query=factory.getCurrentSession().createQuery("from Patient where docassign='"+docname+"' and admitdate between '"+startdate+"' and '"+enddate+"'");
		return query.getResultList();
	}

	@Override
	public List<Patient> listPatientCountByDate(String startdate, String enddate) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Patient> query=factory.getCurrentSession().createQuery("from  Patient where admitdate between '"+startdate+"' and '"+enddate+"'");
		return query.getResultList();
	}

}
