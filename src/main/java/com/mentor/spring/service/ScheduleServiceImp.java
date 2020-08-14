package com.mentor.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.ScheduleDao;
import com.mentor.spring.model.Schedule;

@Service
public class ScheduleServiceImp implements ScheduleService {
	
	@Autowired
	ScheduleDao dao;

	@Override
	@Transactional
	public int save(Schedule schedule) {
		// TODO Auto-generated method stub
		return dao.save(schedule);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Schedule> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	@Transactional(readOnly=true)
	public List<Schedule> listByDepartment(String department) {
		// TODO Auto-generated method stub
		return dao.listByDepartment(department);
	}

}
