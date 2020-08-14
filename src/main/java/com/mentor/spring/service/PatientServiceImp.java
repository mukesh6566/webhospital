package com.mentor.spring.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.hibernate.type.TrueFalseType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.PatientDao;
import com.mentor.spring.model.Patient;

@Service
public class PatientServiceImp implements PatientService {
	
	@Autowired
	PatientDao dao;
	

	@Override
	@Transactional
	public int save(Patient patient) {
		// TODO Auto-generated method stub
		return dao.save(patient);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Patient> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	@Transactional(readOnly=true)
	public List<Patient> listPatientByDate() {
		// TODO Auto-generated method stub
		String day = null;
		int status=0;
		Calendar calendar=Calendar.getInstance();
	    String startdate = null,enddate = null;
	    int count=0;
		int min=calendar.getMinimum(Calendar.DATE);
		for(int i=0;i<=calendar.getActualMaximum(Calendar.DATE)-1;i++)
		{
		calendar.add(Calendar.DATE, -calendar.get(Calendar.DATE)+1+i); 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
		
		if(count==0)
		{
			startdate=sdf.format(calendar.getTime());
			count++;
		}
		enddate=sdf.format(calendar.getTime());
	
	    

	}////For Loop Ends
		return dao.listPatientByDate(startdate, enddate);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Patient> listPatientByDocId(String docname) {
		// TODO Auto-generated method stub
		String day = null;
		int status=0;
		Calendar calendar=Calendar.getInstance();
	    String startdate = null,enddate = null;
	    int count=0;
		int min=calendar.getMinimum(Calendar.DATE);
		for(int i=0;i<=calendar.getActualMaximum(Calendar.DATE)-1;i++)
		{
		calendar.add(Calendar.DATE, -calendar.get(Calendar.DATE)+1+i); 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
		
		if(count==0)
		{
			startdate=sdf.format(calendar.getTime());
			count++;
		}
		enddate=sdf.format(calendar.getTime());
	
	    

	}////For Loop Ends
		return dao.listPatientByDocId(startdate, enddate, docname);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Patient> listPatientCountByDate(String startdate, String enddate) {
		// TODO Auto-generated method stub
		return dao.listPatientCountByDate(startdate, enddate);
	}

}
