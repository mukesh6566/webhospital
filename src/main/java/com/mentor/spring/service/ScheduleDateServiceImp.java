package com.mentor.spring.service;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Month;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.ScheduleDateDao;
import com.mentor.spring.model.Schedule;
import com.mentor.spring.model.ScheduleDate;

@Service
public class ScheduleDateServiceImp implements ScheduleDateService {

	ScheduleDate scheduleDate=new ScheduleDate();
	@Autowired
	ScheduleDateDao dao;
	
	@Override
	public int add(Schedule schedule) {
		// TODO Auto-generated method stub
		
		
		String day = null;
		int status=0;
		///Calendar calendar=Calendar.getInstance();
	  ////  LocalDate date=LocalDate.now();
		///   System.out.println(date.minusDays(5));
		Calendar calendar=Calendar.getInstance();
	
		//////System.out.println(calendar.getActualMaximum(Calendar.DATE));
		int min=calendar.getMinimum(Calendar.DATE);
		for(int i=0;i<=calendar.getActualMaximum(Calendar.DATE)-1;i++)
		{
		calendar.add(Calendar.DATE, -calendar.get(Calendar.DATE)+1+i); 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
		System.out.println("Date : " + sdf.format(calendar.getTime()));
		int exp=calendar.get(Calendar.DAY_OF_WEEK);
		////System.out.println(calendar.getTime()); 
	   //// System.out.println(calendar.get(Calendar.DAY_OF_WEEK)); 
	    switch(exp)
	    {
	    case 1:
	    {
	    	
	    	System.out.println("Hello sunday");
	        scheduleDate.setDepartname(schedule.getDepartname());
	        scheduleDate.setDoctorname(schedule.getDocname());
	        scheduleDate.setDay(exp);
	        scheduleDate.setTime(schedule.getSunday());
	        scheduleDate.setDate(sdf.format(calendar.getTime()));
	        status=dao.add(scheduleDate);
	        System.out.println("data inserted");
	    	break;
	    }
	    case 2:
	    {
	    	System.out.println("Hello monday");
	        scheduleDate.setDepartname(schedule.getDepartname());
	        scheduleDate.setDoctorname(schedule.getDocname());
	        scheduleDate.setDay(exp);
	        scheduleDate.setTime(schedule.getMonday());
	        scheduleDate.setDate(sdf.format(calendar.getTime()));
	        status=dao.add(scheduleDate);
	    	break;
	    }
	    case 3:
	    {
	    	System.out.println("Hello Tuesday");
	        scheduleDate.setDepartname(schedule.getDepartname());
	        scheduleDate.setDoctorname(schedule.getDocname());
	        scheduleDate.setDay(exp);
	        scheduleDate.setTime(schedule.getTuesday());
	        scheduleDate.setDate(sdf.format(calendar.getTime()));
	        status=dao.add(scheduleDate);
	        break;
	    }
	    case 4:
	    {
	    	System.out.println("Hello Wednesday");
	        scheduleDate.setDepartname(schedule.getDepartname());
	        scheduleDate.setDoctorname(schedule.getDocname());
	        scheduleDate.setDay(exp);
	        scheduleDate.setTime(schedule.getWednesday());
	        scheduleDate.setDate(sdf.format(calendar.getTime()));
	        status=dao.add(scheduleDate);
	    	break;
	    }
	    case 5:
	    {
	    	System.out.println("Hello Thursday");
	        scheduleDate.setDepartname(schedule.getDepartname());
	        scheduleDate.setDoctorname(schedule.getDocname());
	        scheduleDate.setDay(exp);
	        scheduleDate.setTime(schedule.getThursday());
	        scheduleDate.setDate(sdf.format(calendar.getTime()));
	        status=dao.add(scheduleDate);
	    	break;
	    }
	    
	    case 6:
	    {
	    	System.out.println("Hello Friday");
	        scheduleDate.setDepartname(schedule.getDepartname());
	        scheduleDate.setDoctorname(schedule.getDocname());
	        scheduleDate.setDay(exp);
	        scheduleDate.setTime(schedule.getFriday());
	        scheduleDate.setDate(sdf.format(calendar.getTime()));
	        status=dao.add(scheduleDate);
	    	break;
	    }
	    case 7:
	    {
	    	System.out.println("Hello Saturday");
	        scheduleDate.setDepartname(schedule.getDepartname());
	        scheduleDate.setDoctorname(schedule.getDocname());
	        scheduleDate.setDay(exp);
	        scheduleDate.setTime(schedule.getSaturday());
	        scheduleDate.setDate(sdf.format(calendar.getTime()));
	        status=dao.add(scheduleDate);
	    	break;
	    }
	    
	    }
	    
		}
		
		
       
     
	/*	switch(day)
		{
		case "sunday":
		{
			
		}
		case "monday":
		{
			
		}
		case "tuesday":
		{
			
		}
		}*/
		return status;
	}

	@Override
	@Transactional(readOnly=true)
	public List<ScheduleDate> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}
	public static void main(String args[])
	{
		ScheduleDateService service=new ScheduleDateServiceImp();
		///service.add();
	}

	@Override
	@Transactional(readOnly=true)
	public List<ScheduleDate> listScheduleByDate(String name, String date) {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateInString = date;
		System.out.println(dateInString);
		Date date1 = null;
		try {
			date1 = sdf.parse(dateInString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println(date1);
	    Calendar calendar = Calendar.getInstance();
		calendar.setTime(date1);
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy MMM dd");
		////System.out.println("Date : " + sdf1.format(calendar.getTime()));
		////System.out.println("Date : " + sdf1.format(calendar.getTime().toString()));
		return dao.listScheduleByDate(name, sdf1.format(calendar.getTime()));
		///return null;
	}

}
