package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Schedule;
import com.mentor.spring.model.ScheduleDate;

public interface ScheduleDateService {
	int add(Schedule schedule);
	List<ScheduleDate> list();
	List<ScheduleDate> listScheduleByDate(String name,String date);

}
