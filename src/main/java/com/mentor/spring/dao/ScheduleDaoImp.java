package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mentor.spring.model.Schedule;

@Repository
public class ScheduleDaoImp implements ScheduleDao {
	
	@Autowired
	private SessionFactory factory;

	@Override
	public int save(Schedule schedule) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(schedule);
	}

	@Override
	public List<Schedule> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Schedule> query=factory.getCurrentSession().createQuery("from  Schedule ORDER BY scheduleid DESC");
		return query.getResultList();
	}

	@Override
	public List<Schedule> listByDepartment(String department) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Schedule> query=factory.getCurrentSession().createQuery("from  Schedule where departname='"+department+"'");
		return query.getResultList();
	}

}
