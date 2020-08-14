package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.mentor.spring.model.ScheduleDate;


@Repository
public class ScheduleDateDaoImp implements ScheduleDateDao {
	
	@Autowired
	SessionFactory factory;

	@Override
	@Transactional
	public int add(ScheduleDate schedule) {
		// TODO Auto-generated method stub
		
		return (int) factory.getCurrentSession().save(schedule);
	}

	@Override
	public List<ScheduleDate> list() {
		// TODO Auto-generated method stub
		   @SuppressWarnings("unchecked")
		   TypedQuery<ScheduleDate> query = factory.getCurrentSession().createQuery("from ScheduleDate");
		   return query.getResultList();
	}

	@Override
	public List<ScheduleDate> listScheduleByDate(String name, String date) {
		// TODO Auto-generated method stub
		 @SuppressWarnings("unchecked")
		   TypedQuery<ScheduleDate> query = factory.getCurrentSession().createQuery("from ScheduleDate where date='"+date+"' and doctorname='"+name+"' ");
		   return query.getResultList();
	}


}
