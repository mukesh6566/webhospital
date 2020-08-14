package com.mentor.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NurseController {
	
	@GetMapping("/nurse/form")
	public String nurseForm()
	{
		return "nurseform";
	}
	
	@GetMapping("/nurse/list")
	public String nurseList()
	{
		return "nurselist";
	}
	
	public String addNurse()
	{
		return null;
	}

}
