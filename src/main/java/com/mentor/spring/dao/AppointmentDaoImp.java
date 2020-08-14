package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mentor.spring.model.Appointment;

@Repository
public class AppointmentDaoImp implements AppointmentDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public int addAppointment(Appointment appointment) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(appointment);
	}

	@Override
	public List<Appointment> listAppointment() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Appointment> query=factory.getCurrentSession().createQuery("from Appointment");
		return query.getResultList();
	}

	@Override
	public Appointment listAppointmentById(int id) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Appointment> query=factory.getCurrentSession().createQuery("from Appointment where appointno="+id+"");
		return query.getSingleResult();
	}

	@Override
	public int updateAppointment(Appointment app) {
		// TODO Auto-generated method stub
		factory.getCurrentSession().update(app);
		return 1;
	}

	@Override
	public List<Appointment> listAppointmentByDoctorName(String docname) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Appointment> query=factory.getCurrentSession().createQuery("from Appointment where docname='"+docname+"'");
		return query.getResultList();
	}

	@Override
	public int acceptAllAppointment() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Appointment> query=factory.getCurrentSession().createQuery("update Appointment set reply='Accepted',status=1 where status=null");
		return query.executeUpdate();
	}

	@Override
	public int acceptAllAppointmentByDocname(String docname) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Appointment> query=factory.getCurrentSession().createQuery("update Appointment set reply='Accepted',status=1 where status=null and docname='"+docname+"'");
		return query.executeUpdate();
	}

}
