package com.mentor.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.mentor.spring.model.Department;
import com.mentor.spring.service.DepartmentService;


@Controller
public class DepartmentController {
	@Autowired
	DepartmentService service;
	
	@Autowired
	FeedbackController feedback;
	
	/*********************************to show the department form*******************************************/
	@GetMapping(value="/department/form")
	public String showDepartmentForm(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("feedbackcount",feedback.feedbackCount());
		return "/jsp/departmentform";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/department/list")
	public String showDepartmentList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("feedbackcount",feedback.feedbackCount());
		model.addAttribute("departments", service.list());
		return "/jsp/departmentlist";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	/*************************************Add Department Function******************************************************************/
	
	@PostMapping("/add/department")
	public String addDepartment(@ModelAttribute("department") Department department)
	{
		int status=service.add(department);
		if(status>0)
		{
			
		 return "redirect:/department/list";
		 
		}
		else
		{
			return null;
		}
	}
	
	@GetMapping("/department/test")
	public String testDepartment()
	{
		///System.out.println("Hello department");
		 return "/jsp/departmentlist";
	}

}
