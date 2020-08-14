package com.mentor.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mentor.spring.model.Bed;
import com.mentor.spring.service.BedService;

@Controller
public class BedController {
	@Autowired
	BedService service;
	
	
	@GetMapping("/bed/form")
	public String showBedForm(HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		return "/jsp/bedform";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@PostMapping("/add/bed")
	public String addBed(@ModelAttribute("bed") Bed bed,Model model,HttpSession session)
	{
		int status=service.addBed(bed);
		if(status>0)
		{
			model.addAttribute("beds", service.listBed());
			return "redirect:/bed/list";
		}
		else
		{
			System.out.println("Data not inserted sucessfully");
		}
		return null;
	}
	
	@GetMapping("/bed/list")
	public String showBedList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("beds", service.listBed());
		return "/jsp/bedlist";
		}
		else
		{
			return "redirect:/";
		}
	}

}
