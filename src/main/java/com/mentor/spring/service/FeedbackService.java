package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Feedback;

public interface FeedbackService {
	public int addService(Feedback feedback);
	public List<Feedback> list();


}
