package com.mentor.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.DepartmentDao;
import com.mentor.spring.model.Department;

@Service
public class DepartmentServiceImp implements DepartmentService {
	
	@Autowired
	DepartmentDao dao;

	@Override
	@Transactional
	public int add(Department department) {
		// TODO Auto-generated method stub
		return dao.add(department);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Department> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

}
