package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.model.Department;
import com.mentor.spring.model.Doctor;
import com.mentor.spring.model.Patient;
import com.mentor.spring.model.ScheduleDate;

@Repository
public class DoctorDaoImp implements DoctorDao {
	
	@Autowired
	private SessionFactory factory;

	@Override
	public int save(Doctor doctor) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(doctor);///
	}

	@Override
	public List<Doctor> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Doctor> query=factory.getCurrentSession().createQuery("from Doctor ORDER BY docid DESC");
		return query.getResultList();
	
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Doctor> query=factory.getCurrentSession().createQuery("delete from Doctor where docid="+id+"");
		return 	query.executeUpdate();
	}

	@Override
	public Doctor getDoctorById(int id) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Doctor> query=factory.getCurrentSession().createQuery("from Doctor where docid="+id+"");
		return query.getSingleResult();
	}

	@Override
	public int updateBydId(Doctor doctor) {
		// TODO Auto-generated method stub
		factory.getCurrentSession().update(doctor);
		return 1;
	}

	@Override
	public List<ScheduleDate> listDoctorByDepartmentByDepartment(String department) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<ScheduleDate> query=factory.getCurrentSession().createQuery("from ScheduleDate where  departname='"+department+"'");
		return query.getResultList();
	}

	@Override
	public List<Doctor> listDoctorByDepartment(String department) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		TypedQuery<Doctor> query=factory.getCurrentSession().createQuery("from Doctor where  docdepartment='"+department+"'");
		return query.getResultList();
	}
	

}
