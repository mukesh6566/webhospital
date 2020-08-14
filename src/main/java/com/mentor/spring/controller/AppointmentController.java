package com.mentor.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mentor.spring.model.Appointment;
import com.mentor.spring.service.AppointmentService;
import com.mentor.spring.service.DoctorService;

@Controller
public class AppointmentController {
	
	
	@Autowired
	AppointmentService service;
	
	@Autowired
	DoctorService service1;
	
	@GetMapping("/appointment")
    public String showAppointmentForm(Model model)
    {
		model.addAttribute("doctors", service1.list());
    	return "/hospitalweb/appointment";
    }
	
	
	@GetMapping("/appointment1/{doctor}")
    public String showAppointmentForm1(Model model,@PathVariable("doctor") String doctor)
    {
		model.addAttribute("doctor", doctor);
    	return "/hospitalweb/appointment";
    }
	
	@GetMapping("/appointment/li")
	public String appointmentList1(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Appointment> appointments=service.listAppointment();
		model.addAttribute("appointments",appointments);
		return "/jsp/appointmentlist1";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	
	@PostMapping("/send/appointment")
	public String sendAppointment(@ModelAttribute("appointment") Appointment appointment,Model model)
	{
		
	    int  status=service.addAppointment(appointment);
	    if(status>0)
	    {
	    	////model.addAttribute("msg", "Appointment send sucessfully");
	    	
	    	///return "/hospitalweb/appointment";
	    	return "redirect:/appointment/success";
	    }
	    else
	    {
	    	return "redirect:/appointment/error";
	    }
	
	}
	
	@GetMapping("/appointment/list")
	public String appointmentList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Appointment> appointments=service.listAppointment();
		model.addAttribute("appointments",appointments);
		return "/jsp/appointmentlist1";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/appointment/reject/form/{id}")
	public String appointmentRejectForm(Model model,@PathVariable("id") String id,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("appointment",service.listAppointmentById(Integer.parseInt(id)));
		return "/jsp/rejectappointment";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/appointment/accept/form/{id}")
	public String appointmentAcceptForm(Model model,@PathVariable("id") String id,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("appointment",service.listAppointmentById(Integer.parseInt(id)));
		return "/jsp/acceptappointment";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@PostMapping("/reject/appointment")
	public String rejectAppointment(@RequestParam("appointno") String appointno,@RequestParam("replymessage") String replymessage)
	{
		Appointment app=service.listAppointmentById(Integer.parseInt(appointno));
		app.setAppointno(Integer.parseInt(appointno));
		app.setStatus(2);
		app.setReplymessage(replymessage);
		System.out.println("Hello appoitnment");
		int status=service.updateAppointment(app);
		if(status>0)
		{
			return "redirect:/appointment/reject/list";
		}
		
		return null;
	}
	
	@PostMapping("/accept/appointment")
	public String acceptAppointment(@RequestParam("appointno") String appointno,@RequestParam("replymessage") String replymessage)
	{
		Appointment app=service.listAppointmentById(Integer.parseInt(appointno));
		app.setAppointno(Integer.parseInt(appointno));
		app.setStatus(1);
		app.setReplymessage(replymessage);
		System.out.println("Hello appoitnment");
		int status=service.updateAppointment(app);
		if(status>0)
		{
			return "redirect:/appointment/accept/list";
		}
		
		return null;
	}
	
	@GetMapping("/appointment/accept/list")
	public String appointmentAcceptList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Appointment> appointments=service.listAppointment();
		model.addAttribute("appointments",appointments);
		return "/jsp/acceptedappointmentlist";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/appointment/reject/list")
	public String appointmentRejectedList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Appointment> appointments=service.listAppointment();
		model.addAttribute("appointments",appointments);
		return "/jsp/rejectedappointmentlist";
		}
		else
		{
			return "redirect:/";
		}
		
	}
	
	@GetMapping("/appointment/listbydocname")
	public String appointmentGetByDoctorName(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Appointment> appointment=service.listAppointmentByDoctorName((String) session.getAttribute("docname"));
	    model.addAttribute("appointments", appointment);
		return "/jsp/appointmentlist1";
		}
		else
		{
			return "redirect:/";
		}
	
	}
	
	@GetMapping("/appointment/accept/listbydocname")
	public String appointmentGetByDoctorName1(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Appointment> appointment=service.listAppointmentByDoctorName((String) session.getAttribute("docname"));
	    model.addAttribute("appointments", appointment);
		return "/jsp/acceptedappointmentlist";
		}
		else
		{
			return "redirect:/";
		}
	
	}
	
	@GetMapping("/appointment/reject/listbydocname")
	public String appointmentGetByDoctorName2(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		List<Appointment> appointment=service.listAppointmentByDoctorName((String) session.getAttribute("docname"));
	    model.addAttribute("appointments", appointment);
		return "/jsp/rejectedappointmentlist";
		}
		else
		{
			return "redirect:/";
		}
	
	}
	
	@GetMapping("/accept/all")
	public String acceptAllAppointment(HttpSession session)
	{
		String docname=(String) session.getAttribute("docname");
		if(docname==null)
		{
		int status=service.acceptAllAppointment();
		if(status>0)
		{
		return "redirect:/appointment/accept/list";
		}
		else
		{
			return null;
		}
		}
		else
		{
			int status=service.acceptAllAppointmentByDocname(docname);
			if(status>0)
			{
				return "redirect:/appointment/accept/list";
			}
			return null;
		}
	}
	

	
	
	
	
	
	
	

	
	
	

	
	
	
	

}
