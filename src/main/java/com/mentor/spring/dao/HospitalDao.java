package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Hospital;

public interface HospitalDao {
	 int add(Hospital hospital);
	 List<Hospital> list();
	 int delete(int id);
	 

}
