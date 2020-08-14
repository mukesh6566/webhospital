package com.mentor.spring.service;

import java.util.List;

import org.hibernate.type.TrueFalseType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.AppointmentDao;
import com.mentor.spring.model.Appointment;

@Service
public class AppointmentServiceImp implements AppointmentService {
	
	@Autowired
	AppointmentDao dao;

	@Override
	@Transactional
	public int addAppointment(Appointment appointment) {
		// TODO Auto-generated method stub
		return dao.addAppointment(appointment);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Appointment> listAppointment() {
		// TODO Auto-generated method stub
		return dao.listAppointment();
	}

	@Override
	@Transactional(readOnly=true)
	public Appointment listAppointmentById(int id) {
		// TODO Auto-generated method stub
		return dao.listAppointmentById(id);
	}

	@Override
	@Transactional
	public int updateAppointment(Appointment app) {
		// TODO Auto-generated method stub
		return dao.updateAppointment(app);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Appointment> listAppointmentByDoctorName(String docname) {
		// TODO Auto-generated method stub
		return dao.listAppointmentByDoctorName(docname);
	}

	@Override
	@Transactional
	public int acceptAllAppointment() {
		// TODO Auto-generated method stub
		return dao.acceptAllAppointment();
	}

	@Override
	@Transactional
	public int acceptAllAppointmentByDocname(String docname) {
		// TODO Auto-generated method stub
		return dao.acceptAllAppointmentByDocname(docname);
	}



}
