package com.mentor.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mentor.spring.model.Schedule;
import com.mentor.spring.service.DepartmentService;
import com.mentor.spring.service.DoctorService;
import com.mentor.spring.service.ScheduleDateService;
import com.mentor.spring.service.ScheduleService;

@Controller
public class ScheduleDateController {
	@Autowired
	ScheduleDateService service2;
	@Autowired
	DepartmentService service;
	@Autowired
	DoctorService dservice;
	@Autowired
	FeedbackController feedback;
	
	@GetMapping("/show/scheduledateform")
	public String showScheduleDateForm(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		 model.addAttribute("departments",service.list());
		 model.addAttribute("doctors", dservice.list());
		 model.addAttribute("feedbackcount",feedback.feedbackCount());
		 return "/jsp/scheduledateform";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/scheduledate/list")
	public String scheduleDateList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		  model.addAttribute("schedules", service2.list());
		  model.addAttribute("feedbackcount",feedback.feedbackCount());
		  return "/jsp/schedulelist";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	 @PostMapping("/save/schedule1")
	 public String addSchedule(@ModelAttribute("schedule") Schedule schedule,BindingResult result)
	 {
		 if(result.hasErrors())
		 {
			 System.out.println("There is a binding result");
		 }
		 int status=service2.add(schedule);
		 if(status>0)
		 {
			 System.out.println("data sucessfully inserted");
			 return "redirect:/scheduledate/list";
		 }
		 return null;
	 }
	

}
