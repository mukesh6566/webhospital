package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Appointment;

public interface AppointmentService {
	public int addAppointment(Appointment appointment);
	public List<Appointment> listAppointment();
	public Appointment listAppointmentById(int id);
	public int updateAppointment(Appointment app);
	public List<Appointment> listAppointmentByDoctorName(String docname);
	public int acceptAllAppointment();
	public int acceptAllAppointmentByDocname(String docname);
	
	
	
}
