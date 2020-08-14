package com.mentor.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.FeedbackDao;
import com.mentor.spring.model.Feedback;

@Service
public class FeedbackServiceImp implements FeedbackService {
	
	@Autowired
	FeedbackDao dao;

	@Override
	@Transactional
	public int addService(Feedback feedback) {
		// TODO Auto-generated method stub
		return dao.addService(feedback);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Feedback> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

}
