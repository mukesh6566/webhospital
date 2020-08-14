package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Department;
import com.mentor.spring.model.Doctor;
import com.mentor.spring.model.ScheduleDate;

public interface DoctorDao {
	int save(Doctor doctor);
	List<Doctor> list();
	int deleteById(int id);
	Doctor getDoctorById(int id);
	int updateBydId(Doctor doctor);
	List<Doctor> listDoctorByDepartment(String department);
	List<ScheduleDate> listDoctorByDepartmentByDepartment(String department);


}
