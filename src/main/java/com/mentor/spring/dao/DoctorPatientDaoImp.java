package com.mentor.spring.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mentor.spring.model.Doctor;
import com.mentor.spring.model.Patient;
import com.mentor.spring.report.DoctorPatient;

public class DoctorPatientDaoImp implements DoctorPatientDao {
	@Autowired
	SessionFactory factory;

	@Override
	public List<DoctorPatient> genrateDoctorPatient() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Doctor> doctors=factory.getCurrentSession().createQuery("from Doctor").getResultList();
		@SuppressWarnings("unchecked")
		List<Patient> patients=factory.getCurrentSession().createQuery("from Patient").getResultList();
		
		return null;
	}

}
