package com.mentor.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mentor.spring.model.Doctor;
import com.mentor.spring.security.service.SaltedMD5Example;
import com.mentor.spring.service.DepartmentService;
import com.mentor.spring.service.DoctorService;

@Controller
public class DoctorController {
	@Autowired
	DoctorService service;
	@Autowired
	DepartmentService dservice;
	@Autowired
	SaltedMD5Example md;
	
	@Autowired
	FeedbackController feedback;
	
	@RequestMapping(value="/doctor/form",method=RequestMethod.GET)
	public String showDoctorForm(Locale local,Model model,HttpSession session)
	{
		/************************************************************************/
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("departments", dservice.list());
		model.addAttribute("feedbackcount", feedback.feedbackCount());
		return "/jsp/doctorform";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@RequestMapping(value="/doctor/list",method=RequestMethod.GET)
	public String showDocotorTable(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
	    ModelAndView view=new ModelAndView();
	    view.setViewName("table");
		view.addObject("doctors", service.list());
		model.addAttribute("doctors", service.list());
		model.addAttribute("feedbackcount", feedback.feedbackCount());
		return "/jsp/doctorlist";
		}
		else
		{
			return "redirect:/";
		}
	
	}

/*	@PostMapping("/save/doctor")
	public String saveDoctor(@ModelAttribute("doctor")@Valid Doctor doctor,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			return "doctor";
		}
		else
		{
			int status=service.save(doctor);
			if(status>0)
			{
				return "redirect:/doctor/list";
			}
			else
			{
				return null;
			}
		}
	}*/
	
	@PostMapping("/save/doctor")
	public String saveDoctor(@RequestParam("file") MultipartFile file,HttpSession session,@RequestParam("docfname") String docfname,
			@RequestParam("doclname") String doclname,@RequestParam("docemail") String docemail,
			@RequestParam("docpassword") String docpassword,@RequestParam("docdepartment") String docdepartment,
			@RequestParam("docaddress") String docaddress,@RequestParam("docspeciallist") String docspeciallist,
			@RequestParam("docmobile") Long docmobile,@RequestParam("docbio") String docbio,
			@RequestParam("docbirth") String docbirth,@RequestParam("docbloodgroup") String docbloodgroup,
			@RequestParam("docsex") String docsex,@RequestParam("docstatus") String docstatus,
			@RequestParam("docdesignation") String docdesignation
			) throws IOException, ParseException
	{
	//*************************************************************************************************************//
		Doctor doctor=new Doctor();
		doctor.setDocfname(docfname);
		doctor.setDoclname(doclname);
		doctor.setDocemail(docemail);
		doctor.setDocpassword(md.getSecurePassword(docpassword, new byte[]{33,45}));
		doctor.setDocdesignation(docdesignation);
		doctor.setDocdepartment(docdepartment);
		doctor.setDocaddress(docaddress);
		doctor.setDocspeciallist(docspeciallist);
		doctor.setDocmobile(docmobile);
		doctor.setDocbio(docbio);
		doctor.setDocbirth(new SimpleDateFormat("YYYY-MM-DD").parse(docbirth));
		doctor.setDocbloodgroup(docbloodgroup);
		doctor.setDocsex(docsex);
		doctor.setDocstatus(docstatus);
		doctor.setFile(file.getOriginalFilename());
		int status=0;
	//***************************************************************************************************************//
	       String path=session.getServletContext().getRealPath("/resources/upload/");  
	       String filename=file.getOriginalFilename();  
	         
	       System.out.println(path+" "+filename); 
	      // Save file on system
	      if (!file.getOriginalFilename().isEmpty()) {
	         BufferedOutputStream outputStream = new BufferedOutputStream(
	               new FileOutputStream(
	                     new File(path, file.getOriginalFilename())));
	         outputStream.write(file.getBytes());
	         outputStream.flush();
	         outputStream.close();

	        /// model.addAttribute("msg", "File uploaded successfully.");
	         status=service.save(doctor);
	         System.out.println("Status:"+status);
	         System.out.println("File upload sucess");
	      } else {
	        /// model.addAttribute("msg", "Please select a valid file..");
	    	  System.out.println("File not upload not success");
	      }

	      if(status>0)
			{
				return "redirect:/doctor/list";
			}
			else
			{
				return null;
			}
		
		
		
		
		
		
 //******************************************************************************************************************//
		
	/*		int status=service.save(doctor);
			if(status>0)
			{
				return "redirect:/doctor/list";
			}
			else
			{
				return null;
			}*/
		
	}
	
	@GetMapping("/doctor/delete/{docid}")
	public String deleteDoctor(@PathVariable("docid") String docid,HttpSession session) throws Exception
	{
	    Doctor doctor=service.getDoctorById(Integer.parseInt(docid));
		int status=service.deleteById(Integer.parseInt(docid));
		if(status>0)
		{
		
		     String path=session.getServletContext().getRealPath("/resources/upload/");  
		     String realpath=path+"\\"+doctor.getFile();//or we can use / for this make path
		     System.out.println(realpath);
		     new File(realpath).delete();
			 return "redirect:/doctor/list";
		}
		else
		{
			System.out.println("data not deleted");
			return "redirect:/doctor/list";
		}
	}
	
	@GetMapping("/doctor/list/{docid}")
	public String updateDoctor(@PathVariable("docid") String docid,Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		Doctor doctor=service.getDoctorById(Integer.parseInt(docid));
		///model.addAttribute("date", doctor.)
		model.addAttribute("doctor", doctor);
		model.addAttribute("docsex", doctor.getDocsex());
		model.addAttribute("docstatus", doctor.getDocstatus());
		model.addAttribute("docbloodgroup", doctor.getDocbloodgroup());
		model.addAttribute("departments",dservice.list());
		return "/jsp/updatedoctor";
		}
		else
		{
			return "redirect:/";
		}
		
	}
	
	@PostMapping("/update/doctor")
	public String updateDoctorById(@RequestParam("file") MultipartFile file,HttpSession session,@RequestParam("docfname") String docfname,
			@RequestParam("doclname") String doclname,@RequestParam("docemail") String docemail,
			@RequestParam("docpassword") String docpassword,@RequestParam("docdepartment") String docdepartment,
			@RequestParam("docaddress") String docaddress,@RequestParam("docspeciallist") String docspeciallist,
			@RequestParam("docmobile") Long docmobile,@RequestParam("docbio") String docbio,
			@RequestParam("docbirth") String docbirth,@RequestParam("docbloodgroup") String docbloodgroup,
			@RequestParam("docsex") String docsex,@RequestParam("docstatus") String docstatus,
			@RequestParam("docdesignation") String docdesignation,@RequestParam("docid") String id,
			@RequestParam("pic") String pic) throws IOException,ParseException
	{
		
		//***************************************************************************************************************************//
		Doctor doctor=new Doctor();
		doctor.setDocfname(docfname);
		doctor.setDoclname(doclname);
		doctor.setDocemail(docemail);
		doctor.setDocpassword(md.getSecurePassword(docpassword, new byte[]{33,45}));
		doctor.setDocdesignation(docdesignation);
		doctor.setDocdepartment(docdepartment);
		doctor.setDocaddress(docaddress);
		doctor.setDocspeciallist(docspeciallist);
		doctor.setDocmobile(docmobile);
		doctor.setDocbio(docbio);
		doctor.setDocbirth(new SimpleDateFormat("YYYY-MM-DD").parse(docbirth));
		doctor.setDocbloodgroup(docbloodgroup);
		doctor.setDocsex(docsex);
		doctor.setDocstatus(docstatus);
		doctor.setFile(pic);
		doctor.setDocid(Integer.parseInt(id));
		int status=0;
		
		//****************************************************************************************************************************//
		status=service.updateBydId(doctor);
		if(status>0)
		{
			 return "redirect:/doctor/list";
		}
		else
		{
		return null;
		}
	}
	
	
	public int countDoctor()
	{
		List<Doctor> doctors=service.list();
		int count=0;
		for(Doctor doctor:doctors)
		{
			count++;
		}

		return count;
	}
	
	
	
	

}
