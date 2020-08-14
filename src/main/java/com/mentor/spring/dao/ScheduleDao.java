package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Schedule;

public interface ScheduleDao {
	int save(Schedule schedule);
	List<Schedule> list();
	List<Schedule> listByDepartment(String department);

}
