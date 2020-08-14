package com.mentor.spring.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mentor.spring.dao.DoctorDao;
import com.mentor.spring.model.Department;
import com.mentor.spring.model.Doctor;
import com.mentor.spring.model.ScheduleDate;

@Service
public class DoctorServiceImp implements DoctorService {
	@Autowired
	DoctorDao dao;

	@Override
	@Transactional
	public int save(Doctor doctor) {
		// TODO Auto-generated method stub
		return dao.save(doctor);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Doctor> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	@Transactional
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return dao.deleteById(id);
	}

	@Override
	@Transactional(readOnly=true)
	public Doctor getDoctorById(int id) {
		// TODO Auto-generated method stub

		return dao.getDoctorById(id);
	}

	@Override
	@Transactional
	public int updateBydId(Doctor doctor) {
		// TODO Auto-generated method stub
		return dao.updateBydId(doctor);
	}

	@Override
	@Transactional
	public List<ScheduleDate> listDoctorByDepartmentByDepartment(String department) {
		// TODO Auto-generated method stub
		return dao.listDoctorByDepartmentByDepartment(department);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Doctor> listDoctorByDepartment(String department) {
		// TODO Auto-generated method stub
		return dao.listDoctorByDepartment(department);
	}

}
