package com.mentor.spring.json.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mentor.spring.model.Doctor;
import com.mentor.spring.model.ScheduleDate;
import com.mentor.spring.service.DoctorService;

@RestController
public class DoctorRestController {
	@Autowired
	DoctorService service;
	
	   @GetMapping("/doctorlistbydepartment")
	   public ResponseEntity<List<Doctor>> list(@RequestParam("department") String department) {
		   System.out.println(department);
	      List<Doctor> doctors = service.listDoctorByDepartment(department);
	      return ResponseEntity.ok().body(doctors);
	   }
	   
	   @GetMapping("/doctorlistbydepartment1")
	   public ResponseEntity<List<ScheduleDate>> list1(@RequestParam("department") String department) {
		   System.out.println(department);
	      List<ScheduleDate> doctors = service.listDoctorByDepartmentByDepartment(department);
	      return ResponseEntity.ok().body(doctors);
	   }
	   

}
