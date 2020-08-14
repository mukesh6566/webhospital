package com.mentor.spring.dao;

import java.util.List;
import com.mentor.spring.model.ScheduleDate;

public interface ScheduleDateDao {
	int add(ScheduleDate schedule);
	List<ScheduleDate> list();
	List<ScheduleDate> listScheduleByDate(String name,String date);



}
