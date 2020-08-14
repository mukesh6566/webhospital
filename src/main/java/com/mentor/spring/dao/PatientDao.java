package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Patient;

public interface PatientDao {
	int save(Patient patient);
	List<Patient> list();
	List<Patient> listPatientByDate(String startdate,String enddate);
	List<Patient> listPatientByDocId(String startdate,String enddate,String docname);
	List<Patient> listPatientCountByDate(String startdate,String enddate);
	

}
