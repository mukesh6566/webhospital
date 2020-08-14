package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Feedback;

public interface FeedbackDao {
	public int addService(Feedback feedback);
	public List<Feedback> list();

}
