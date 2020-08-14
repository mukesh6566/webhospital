package com.mentor.spring.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mentor.spring.model.Hospital;
import com.mentor.spring.security.service.SaltedMD5Example;
import com.mentor.spring.service.HospitalService;

@Controller
public class HospitalController {
	
	@Autowired
	HospitalService service;
	
	@Autowired
	SaltedMD5Example md;
	
	@GetMapping("/hospital/form")
	public String addHospitalForm(HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
			if(pass.equals("123"))
			{
		    return "/superadmin/addhospital";
			}
			else
			{
				return "redirect:/";
			}
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/hospital/list")
	public String showHospitaltable(Model model)
	{
		model.addAttribute("hospitals", service.list());
		return "/superadmin/hospitallist";
	}
	
	
	@PostMapping("/add/hospital")
	public String addHospital(@RequestParam("hosname") String hosname,@RequestParam("hoslocation") String hoslocation,
			@RequestParam("hosdate") String hosdate,@RequestParam("hosphone") String hosphone,
			@RequestParam("hosuname") String hosuname,@RequestParam("hospassword") String hospassword,
			@RequestParam("file") MultipartFile file,HttpSession session
		) throws ParseException,IOException
	{
		
		Hospital hospital=new Hospital();
		hospital.setHospitalname(hosname);
		hospital.setHospitallocation(hoslocation);
	    hospital.setDate(new SimpleDateFormat("YYYY-MM-DD").parse(hosdate));
		///hospital.setDate(hosdate);
		hospital.setHospitalphone(Long.parseLong(hosphone));
		hospital.setHospitalusername(hosuname);
		hospital.setHospass(md.getSecurePassword(hospassword, new byte[]{33,45}));
		hospital.setHospitalpic(file.getOriginalFilename());
		int status=0;
		//***********************************Before saving the file is uplading***********************************************//*
	       String path=session.getServletContext().getRealPath("/resources/logo/");  
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
	         status=service.add(hospital);
	         System.out.println("Status:"+status);
	         System.out.println("File upload sucess");
	      } else {
	        /// model.addAttribute("msg", "Please select a valid file..");
	    	  System.out.println("File not upload not success");
	      }
		
		//*******************************************************************************************************************//*
	      if(status>0)
	      {
	    	 return "redirect:/hospital/list";
	      }
	      else{
		     return "redirect:/";
	      }
	}
	
	@GetMapping("/hospital/delete/{id}")
	public String deleteHospital(@PathVariable("id") String id,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
	        int status=service.delete(Integer.parseInt(id));
	        if(status>0)
	        {
	        	return "redirect:/hospital/list";
	        }
	        else
	        {
	        	return null;
	        }
		}
		else
		{
			return "redirect:/";
		}
	
	}
	
/*	@GetMapping("/hospital/list")
	public String getHospital()
	{
		return "redirect:/";
	}
	*/
	

}
