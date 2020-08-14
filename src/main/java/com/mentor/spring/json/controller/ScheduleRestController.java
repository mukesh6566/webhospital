package com.mentor.spring.json.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mentor.spring.model.ScheduleDate;
import com.mentor.spring.service.ScheduleDateService;

@RestController
public class ScheduleRestController {
	@Autowired
	ScheduleDateService service;
	 /*---get all books---*/
	   @GetMapping("/schedulejson")
	   public ResponseEntity<List<ScheduleDate>> list() {
		   System.out.println("Hello customer");
	      List<ScheduleDate> schedules = service.list();
	      return ResponseEntity.ok().body(schedules);
	   }
	   
	   @GetMapping("/schedulejsonbydate")
	   public ResponseEntity<List<ScheduleDate>> list(@RequestParam("date1") String date1,@RequestParam("doctor") String doctor) {
		   System.out.println("Hello customer");
	      List<ScheduleDate> schedules = service.listScheduleByDate(doctor, date1);
	      return ResponseEntity.ok().body(schedules);
	   }
	   
	   
	

}
