package com.mentor.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mentor.spring.model.Patient;
import com.mentor.spring.service.DepartmentService;
import com.mentor.spring.service.DoctorService;
import com.mentor.spring.service.PatientService;

@Controller
public class PatientController {
	
	@Autowired
	private PatientService service;
	
	@Autowired
	FeedbackController feedback;
	
	@Autowired
	DoctorService doctor;
	
	@Autowired
	DepartmentService department;
	
	
	@GetMapping("/patient/form")
	public String showPatientForm(HttpSession session,Model model)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("feedbackcount", feedback.feedbackCount());
		model.addAttribute("doctors",doctor.list());
		model.addAttribute("departments",department.list());
		return "/jsp/patientform";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/patient/list")
	public String showPatientList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("patients", service.list());
		model.addAttribute("feedbackcount", feedback.feedbackCount());
		return "/jsp/patientlist";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@PostMapping("/add/patient")
	public String addPatient(@ModelAttribute("patient") Patient patient)
	{
		System.out.println("Hello world");
		int status=service.save(patient);
		if(status>0)
		{
			return "redirect:/patient/list";
		}
		else
		{
		return null;
		}

	}
	
	public int countPatient()
	{
		int count=0;
		List<Patient> patients=service.list();
		for(Patient patient:patients)
		{
			count++;
		}
		return count;
	}
	
	@GetMapping("/doctorpatient/report")
	public String patientReportFromDate(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Patient> patients=service.listPatientByDate();
		model.addAttribute("patients",patients);
		return "/jsp/doctorpatientreport";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/doctor/report")
	public String patientReportFromId(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Patient> patients=service.listPatientByDocId((String) session.getAttribute("docname"));
		model.addAttribute("patients",patients);
		return "/jsp/doctorpatientreport";
		}
		else
		{
			return "redirect:/";
		}
	}
	


	
	

}
