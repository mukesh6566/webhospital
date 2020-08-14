package com.mentor.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.BedDao;
import com.mentor.spring.model.Bed;

@Service
public class BedServiceImp implements BedService {
	@Autowired
	BedDao dao;

	@Override
	@Transactional
	public int addBed(Bed bed) {
		// TODO Auto-generated method stub
		return dao.addBed(bed);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Bed> listBed() {
		// TODO Auto-generated method stub
		return dao.listBed();
	}

}
