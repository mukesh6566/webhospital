package com.mentor.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mentor.spring.model.Appointment;
import com.mentor.spring.service.AppointmentService;
import com.mentor.spring.service.DepartmentService;

@Controller
public class HospitalWebController {
	
	@Autowired
	DepartmentService service;
	
	@Autowired
	AppointmentService service1;
	
	@GetMapping("/index")
	public String showHospitalWebHome()
	{
		return "/hospitalweb/index";
	}
	
	@GetMapping("/department")
	public String showDepartment()
	{
		return "/hospitalweb/departments";
	}
	
	@GetMapping("/doctorschedule")
	public String showSchedule(Model model)
	{
		model.addAttribute("departments", service.list());
		return "/hospitalweb/doctorsSchedule";
	}
	
	@GetMapping("/contact")
	public String showContact()
	{
		return "/hospitalweb/contact";
	}
	
	@GetMapping("/about")
	public String showAbout()
	{
		return "/hospitalweb/about";
	}
	
	@GetMapping("/doctor/search")
	public String doctorSearch(Model model)
	{
		model.addAttribute("departments",service.list());
		return "/hospitalweb/doctorsearch";
	}
	
	@GetMapping("/appointment/success")
	public String appointmentSucess(Model model)
	{
		return "/sucesserror/appointmentsucess";
	}
	
	@GetMapping("/appointment/error")
	public String appointmentError(Model model)
	{
		return "/sucesserror/appointmenterror";
	}
	
	@GetMapping("/feedback/success")
	public String feedbackSuccess(Model model)
	{
		return "/sucesserror/feedbacksucess";
	}
	
	@GetMapping("/feedback/error")
	public String feedbackError(Model model)
	{
		return "/sucesserror/feedbackerror";
	}
	
	@GetMapping("/appointment/status1")
     public String showAppointmentStatus(Model model)
     {
   
		List<Appointment> appointments=service1.listAppointment();
		model.addAttribute("appointments",appointments);
		return "/hospitalweb/appointmenttest";
	
     }
}
