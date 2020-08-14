package com.mentor.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mentor.spring.model.Schedule;
import com.mentor.spring.service.DepartmentService;
import com.mentor.spring.service.DoctorService;
import com.mentor.spring.service.ScheduleService;

@Controller
public class ScheduleController {
	@Autowired
	DepartmentService service;
	@Autowired
	DoctorService dservice;
	@Autowired
	ScheduleService service2;
	 @GetMapping("/schedule/form")
     public String showScheduleForm(Model model,HttpSession session)
     {
			String pass=(String) session.getAttribute("hossession");
			if(pass!=null)
			{
		          model.addAttribute("departments",service.list());
		          model.addAttribute("doctors", dservice.list());
    	          return "/jsp/scheduleform";
			}
			else
			{
				return "redirect:/";
			}
     }
	 
	 @GetMapping("c")
	 public String showScheduleList(Model model,HttpSession session)
	 {
		 model.addAttribute("schedules", service2.list());
		 return "/jsp/schedulelist";
	 }
	 
	 @PostMapping("/save/schedule")
	 public String addSchedule(@ModelAttribute("schedule") Schedule schedule,BindingResult result)
	 {
		 if(result.hasErrors())
		 {
			 System.out.println("There is a binding result");
		 }
		 int status=service2.save(schedule);
		 if(status>0)
		 {
			 return "redirect:/schedule/list";
		 }
		 return null;
	 }
	 
	 @GetMapping("/schedule/listbydepartment")
	 public String showScheduleListByDepartment(@RequestParam("department") String department,Model model,HttpSession session)
	 {
		 System.out.println(department);
		 model.addAttribute("departments",service.list());
		 model.addAttribute("schedules", service2.listByDepartment(department));
		 
		 return "/hospitalweb/doctorsSchedule";
	 }

}
