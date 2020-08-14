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

import com.mentor.spring.model.Payment;
import com.mentor.spring.service.PatientService;
import com.mentor.spring.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	PatientService service;
	
	@Autowired
	PaymentService paymentservice;
	
	@GetMapping("/patient/show")
	public String patientList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("patients",service.list());
		return "/jsp/addpayment";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/payment/form/{id}")
	public String paymentForm(@PathVariable("id") String id,Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("patid",id);
		return "/jsp/paymentform";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/paymentreport/form")
	public String paymentReportForm(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		return "/jsp/paymentreport";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/payment/list")
	public String paymentList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("payments",paymentservice.listPayment());
		return "/jsp/paymentlist";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@PostMapping("/add/payment")
	public String addPayment(@ModelAttribute("payment") Payment payment)
	{
		
		int status=paymentservice.addPayment(payment);
		if(status>0)
		{
		    return "redirect:/payment/list";
			
		}
		else
		{
			System.out.println("Payment added failed");
		}
		return null;
		
	}
	
	@GetMapping("/paymentbypatientid")
	public String getPaymentByPatientId(Model model,@RequestParam("patid") String patientid,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
	    List<Payment> payments=paymentservice.listPaymentByPatientId(patientid);
	    int paymentsum=0;
	    for(Payment payment:payments)
	    {
	    	paymentsum=paymentsum+Integer.parseInt(payment.getTotamount());
	    }
	    model.addAttribute("paymentsum",paymentsum);
	    model.addAttribute("payments", payments);
		return "/jsp/paymentlist";
		}
		else
		{
			return "redirect:/";
		}
	
	}
	
	
	
	

}
