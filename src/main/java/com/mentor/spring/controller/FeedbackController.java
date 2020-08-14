package com.mentor.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mentor.spring.model.Feedback;
import com.mentor.spring.service.FeedbackService;

@Controller
public class FeedbackController {
	@Autowired
	FeedbackService service;
	
	@GetMapping("/feedback/list")
	public String feedbackList(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
	    model.addAttribute("feedbacks", service.list());
	    model.addAttribute("feedbackcount",feedbackCount());
		return "/jsp/mailbox";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@PostMapping("/add/feedback")
	public String addFeedback(@ModelAttribute("feedback") Feedback feedback,BindingResult result,Model model,HttpSession session)
	{
		if(result.hasErrors())
		{
			System.out.println("Binding result occured");
		}
		int status=service.addService(feedback);
		if(status>0)
		{
		/////	model.addAttribute("feedback", "Feedback send sucessfully");
		////	return "/hospitalweb/contact";
			return "redirect:/feedback/success";
		}
		else
		{
			System.out.println("Feedback not send");
			return "redirect:/feedback/error";
		}
		
	}
	
	public int feedbackCount()
	{
		int count=0;
		List<Feedback> feedbacks=service.list();
		for(Feedback feedback:feedbacks)
		{
			count++;
		}
		return count;
	}
	
	
	
	

}
