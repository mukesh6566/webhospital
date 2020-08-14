package com.mentor.spring.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mentor.spring.model.Department;
import com.mentor.spring.model.Doctor;
import com.mentor.spring.model.Hospital;
import com.mentor.spring.model.Patient;
import com.mentor.spring.model.Payment;
import com.mentor.spring.security.service.SaltedMD5Example;
import com.mentor.spring.service.DepartmentService;
import com.mentor.spring.service.DoctorService;
import com.mentor.spring.service.HospitalService;
import com.mentor.spring.service.PatientService;
import com.mentor.spring.service.PaymentService;


@Controller
public class LoginController {
   Hospital hospital;
   Doctor doctor;
	
	@Autowired
	HospitalService service;
	
	@Autowired
	PaymentService pmservice;
	
	@Autowired
	PatientService ptservice;
	
	@Autowired
	SaltedMD5Example md5;
	
	@Autowired
    DoctorController doc;
	
	@Autowired
	PatientController patient;
	
	@Autowired
	NurseController nurse;
	
	@Autowired
	FeedbackController feedback;
	
	@Autowired
	DoctorService doctorservice;
	
	@Autowired
	DepartmentService dpservice;
	

	   @GetMapping("/")
	   public String loginForm(Locale locale, Model model) {
	   /*   model.addAttribute("user", new User());
	      model.addAttribute("users", userService.list());*/

	      return "/superadmin/login";
	   }
	   

	   @GetMapping("/login")
	   public String loginForm2(Locale locale, Model model) {
	   /*   model.addAttribute("user", new User());
	      model.addAttribute("users", userService.list());*/

	      return "login";
	   }


	
	@RequestMapping(value="/superadmin/dashboard",method=RequestMethod.GET)
	public String showDashboard(Model model)
	{
	
		model.addAttribute("hospital", hospital);
		return "/superadmin/superadmindashboard";
		
	}
	
	@GetMapping("/admin/dashboard")
	public String showAdminDashboard(Model model,HttpSession session) throws ParseException
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("doctorcount",doc.countDoctor());
		model.addAttribute("patientcount", patient.countPatient());
		model.addAttribute("feedbackcount", feedback.feedbackCount());
		List<Department> departments=dpservice.list();
		int dpcount=0;
		for(Department department:departments)
		{
		 dpcount++;	
		}
		model.addAttribute("dpcount", dpcount);
		model.addAttribute("hospital", hospital);
		
		/*****************Report Counting for doctor patient*********************/
		String day = null;
		int status=0;
		Calendar calendar=Calendar.getInstance();
	    String starttime = null,endtime = null;
	    int count=0;
	
		for(int j=0;j<12;j++)
		{
			 calendar.set(calendar.getWeekYear(), j, 05);
			 System.out.println(j);
		for(int i=0;i<=calendar.getActualMaximum(Calendar.DATE)-1;i++)
		{
		calendar.add(Calendar.DATE, -calendar.get(Calendar.DATE)+1+i); 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
		
		if(count==j)///0 in case if one loop
		{
			starttime=sdf.format(calendar.getTime());
			count++;
		}
		endtime=sdf.format(calendar.getTime());
		}
		switch (j) {
		case 0:
		{
			System.out.println("Hello 0");
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("jan", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("jan1", totalpayment);
			
			break;
		}
		case 1:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("feb", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
					String startdate= starttime;
					String enddate=endtime;
					Date date = sdf.parse(startdate);
					Date date1 = sdf.parse(enddate);

				    Calendar calendar1 = Calendar.getInstance();
					calendar1.setTime(date);
				SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
				String startdate1=sdf1.format(calendar1.getTime());
				calendar1.setTime(date1);
				String enddate1=sdf1.format(calendar1.getTime());
				List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
				long totalpayment = 0;
				for(Payment payment:payments)
				{
					totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
				}
				model.addAttribute("feb1", totalpayment);
			break;
		}
		case 2:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("mar", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
					String startdate= starttime;
					String enddate=endtime;
					Date date = sdf.parse(startdate);
					Date date1 = sdf.parse(enddate);

				    Calendar calendar1 = Calendar.getInstance();
					calendar1.setTime(date);
				SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
				String startdate1=sdf1.format(calendar1.getTime());
				calendar1.setTime(date1);
				String enddate1=sdf1.format(calendar1.getTime());
				List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
				long totalpayment = 0;
				for(Payment payment:payments)
				{
					totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
				}
				model.addAttribute("mar1", totalpayment);
			break;
		}
		
		case 3:
		{
			System.out.println("S:"+starttime);
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("apr", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
					String startdate= starttime;
					String enddate=endtime;
					Date date = sdf.parse(startdate);
					Date date1 = sdf.parse(enddate);

				    Calendar calendar1 = Calendar.getInstance();
					calendar1.setTime(date);
				SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
				String startdate1=sdf1.format(calendar1.getTime());
				calendar1.setTime(date1);
				String enddate1=sdf1.format(calendar1.getTime());
				List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
				long totalpayment = 0;
				for(Payment payment:payments)
				{
					totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
				}
				model.addAttribute("apr1", totalpayment);
			break;
		}
		
		case 4:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("may", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("may1", totalpayment);
			break;
		}
		
		case 5:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("jun", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("jun1", totalpayment);
			break;
		}
		
		case 6:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("jul", ptcount);
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("jul1", totalpayment);
			break;
		}
		
		case 7:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("aug", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("aug1", totalpayment);
			break;
		}
		
		case 8:
		{
			
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("sep", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("sep1", totalpayment);
			break;
		}
		
		case 9:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("oct", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("oct1", totalpayment);
			break;
		}
		
		case 10:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("nov", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("nov1", totalpayment);
			break;
		}
		
		case 11:
		{
			List<Patient> patients=ptservice.listPatientCountByDate(starttime, endtime);
			int ptcount=0;
			for(Patient patient:patients)
			{
				ptcount++;
			}
			model.addAttribute("dec", ptcount);
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");
				String startdate= starttime;
				String enddate=endtime;
				Date date = sdf.parse(startdate);
				Date date1 = sdf.parse(enddate);

			    Calendar calendar1 = Calendar.getInstance();
				calendar1.setTime(date);
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
			String startdate1=sdf1.format(calendar1.getTime());
			calendar1.setTime(date1);
			String enddate1=sdf1.format(calendar1.getTime());
			List<Payment> payments=pmservice.listPaymentFromDate(startdate1, enddate1);
			long totalpayment = 0;
			for(Payment payment:payments)
			{
				totalpayment=totalpayment+Long.parseLong(payment.getTotamount());
			}
			model.addAttribute("dec1", totalpayment);
			break;
		}



		default:
			break;
		}
		
		System.out.println(starttime);
		System.out.println(endtime);
	    

	}////For Loop Ends
		
		
		
		/**************************************************************************/
		return "/admin/admindashboard1";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	@GetMapping("/doctor/dashboard")
	public String showDoctorDashboard(Model model,HttpSession session)
	{
		String pass=(String) session.getAttribute("hossession");
		if(pass!=null)
		{
		model.addAttribute("doctorcount",doc.countDoctor());
		model.addAttribute("patientcount", patient.countPatient());
		model.addAttribute("feedbackcount", feedback.feedbackCount());
		List<Department> departments=dpservice.list();
		int dpcount=0;
		for(Department department:departments)
		{
		 dpcount++;	
		}
		model.addAttribute("dpcount", dpcount);
		model.addAttribute("hospital", hospital);
		return "/doctor/admindashboard";
		}
		else
		{
			return "redirect:/";
		}
	}
	
	
	
	@RequestMapping(value="/superadmin/login",method=RequestMethod.POST)
	public String superAdminLogin(@RequestParam("email") String email,@RequestParam("pass") String pass,@RequestParam("user") String user,Model model,HttpSession session)
	{
/*		List<Hospital> hospitals=service.list();
		int count=0;
		for(Hospital hospital:hospitals)
		{
		if(email.equals(hospital.getHospitalusername())&&pass.equals(hospital.getHospass())&&user.equals("Super Admin"))
		{
			////model.setViewName("superadmindashboard");
		    count++;
			session.setAttribute("hossession", pass);
			return "redirect:/superadmin/dashboard";
			////return model;
		}
		}
		if(count==1)
		{
			return "redirect:/superadmin/dashboard";
		}
		
		else
		{
			model.addAttribute("msg","Login Failed Try Again!");
			return "redirect:/";
			model.setViewName("login");
			model.addObject("msg", "Login failed Try Again!");
			model.addAttribute("msg", "Login Failed!Try again");
			return model;
		}*/
		if(user.equals("Super Admin"))
		{
		if(email.equals("ram@gmail.com")&&pass.equals("123"))
		{
			session.setAttribute("hossession", pass);
			return "redirect:/superadmin/dashboard";
		}
		else
		{
			return "redirect:/";
		}
		
		}
		else if(user.equals("Admin"))
		{
			System.out.println("Hello Admin");
	    	List<Hospital> hospitals=service.list();
			int count=0;
			String pass1=md5.getSecurePassword(pass,  new byte[]{33,45});
			for(Hospital hospital:hospitals)
			{
	
			if(email.equals(hospital.getHospitalusername())&&pass1.equals(hospital.getHospass()))
			{
			   
			    count++;
				session.setAttribute("hossession", pass);	
				session.setAttribute("utype","Admin");
				session.setAttribute("name", hospital.getHospitalname());
				this.hospital=hospital;
				break;
				
			}
			}
			if(count==1)
			{
				return "redirect:/admin/dashboard";
			}
			else
			{
				return "redirect:/";
			}
		}
		
		else if(user.equals("Doctor"))
		{
			System.out.println("Hello Doctor");
	    	List<Doctor> doctors=doctorservice.list();
			int count=0;
			String pass1=md5.getSecurePassword(pass,  new byte[]{33,45});
			for(Doctor doctor:doctors)
			{
	
			if(email.equals(doctor.getDocemail())&&pass1.equals(doctor.getDocpassword()))
			{
			   
			    count++;
				session.setAttribute("utype","Doctor");
				session.setAttribute("hossession", pass);	
				String docname="Dr."+doctor.getDocfname()+" "+doctor.getDoclname()+"";
				String doc="Dr. "+doctor.getDocfname()+" "+doctor.getDoclname()+"";
				session.setAttribute("docname", doc);
				session.setAttribute("name",doc);
				this.doctor=doctor;
				break;
				
			}
			}
			if(count==1)
			{
				return "redirect:/doctor/dashboard";
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
	
	@GetMapping("/superadmin/logout")
	public String superAdminLogout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/admin/login")
	public String adminLogin(@RequestParam("email") String email,@RequestParam("pass") String pass,@RequestParam("user") String user,Model model,HttpSession session)
	{
      	List<Hospital> hospitals=service.list();
		int count=0;
		for(Hospital hospital:hospitals)
		{
		if(email.equals(hospital.getHospitalusername())&&pass.equals(md5.getSecurePassword(pass,  new byte[]{33,45}))&&user.equals("Admin"))
		{
		
		    count++;
			session.setAttribute("hossession", pass);
			////return "redirect:/superadmin/dashboard";
		}
		}
		if(count==1)
		{
			return "redirect:/superadmin/dashboard";
		}
		
		else
		{
			model.addAttribute("msg","Login Failed Try Again!");
			return "redirect:/";
		
		}
	
		
	}

}
