package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mentor.spring.model.Department;

@Repository
public class DepartmentDaoImp implements DepartmentDao {
	@Autowired
	private SessionFactory factory;
	
	@Override
	public int add(Department department) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(department);
	}

	@Override
	public List<Department> list() {
		// TODO Auto-generated method stub
		
		@SuppressWarnings("unchecked")
	    TypedQuery<Department> query=factory.getCurrentSession().createQuery("from Department ORDER BY departmentid ASC");
		return query.getResultList();
	}

}
