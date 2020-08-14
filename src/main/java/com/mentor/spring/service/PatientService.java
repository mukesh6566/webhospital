package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Patient;

public interface PatientService {
	
	int save(Patient patient);
	List<Patient> list();
	List<Patient> listPatientByDate();
	List<Patient> listPatientByDocId(String  docname);
	List<Patient> listPatientCountByDate(String startdate,String enddate);
	

}
