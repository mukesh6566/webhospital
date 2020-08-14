package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Schedule;

public interface ScheduleService {

	int save(Schedule schedule);
	List<Schedule> list();
	List<Schedule> listByDepartment(String department);

}
