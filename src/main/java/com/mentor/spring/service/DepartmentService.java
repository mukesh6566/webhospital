package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Department;

public interface DepartmentService {
	int add(Department department);
	List<Department> list(); 

	

}
