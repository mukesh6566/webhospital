package com.mentor.spring.dao;

import java.util.List;
import javax.persistence.TypedQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mentor.spring.model.Feedback;


@Repository
public class FeedbackDaoImp implements FeedbackDao {
	
	@Autowired
	SessionFactory factory;

	@Override
	public int addService(Feedback feedback) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(feedback);
	}

	@Override
	public List<Feedback> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Feedback> query=factory.getCurrentSession().createQuery("from  Feedback");
		return query.getResultList();
	}

}
