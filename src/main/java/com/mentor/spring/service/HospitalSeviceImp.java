package com.mentor.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mentor.spring.dao.HospitalDao;
import com.mentor.spring.model.Hospital;

@Service
public class HospitalSeviceImp implements HospitalService {
	
	@Autowired
	HospitalDao dao;

	@Override
	@Transactional
	public int add(Hospital hospital) {
		// TODO Auto-generated method stub
		return dao.add(hospital);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Hospital> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	@Transactional
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

}
