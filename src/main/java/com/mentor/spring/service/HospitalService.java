package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Hospital;

public interface HospitalService {
	int add(Hospital hospital);
	List<Hospital> list();
	int delete(int id);
}
