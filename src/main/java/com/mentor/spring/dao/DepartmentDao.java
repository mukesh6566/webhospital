package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Department;

public interface DepartmentDao {
	int add(Department department);
	List<Department> list(); 

}
