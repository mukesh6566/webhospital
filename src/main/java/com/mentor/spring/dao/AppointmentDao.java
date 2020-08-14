package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Appointment;

public interface AppointmentDao {
	
	public int addAppointment(Appointment appointment);
	public List<Appointment> listAppointment();
	public Appointment listAppointmentById(int id);
	public int updateAppointment(Appointment app);
	public List<Appointment> listAppointmentByDoctorName(String docname);
	public int acceptAllAppointment();
	public int acceptAllAppointmentByDocname(String docname);

}
