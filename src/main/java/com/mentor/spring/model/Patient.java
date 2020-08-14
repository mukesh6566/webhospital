package com.mentor.spring.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name="Patient")
public class Patient {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID",nullable=false,updatable=false)
	private Integer id;
	
	@Column(name="PAT_ID",nullable=false,unique=true)
	private String patid;
	
	@Column(name="PAT_FNAME",nullable=false)
	private String patfname;
	
	@Column(name="PAT_LNAME",nullable=false)
	private String patlname;
	
	@Column(name="PAT_MOBILE",nullable=false)
	private Long patmobile;
	
	@Column(name="PAT_DOB")
	private String patdob;
	
	@Column(name="DEPARTMENT")
	private String department;
	
	@Column(name="DOC_ASSIGN")
	private String docassign;
	
	@Column(name="PAT_BLOOD")
	private String patbloodgroup;
	
	
	@Column(name="Sex",nullable=false)
	private String patsex;
	
	@Column(name="PAT_STATUS")
	private Short patstatus;
	
	@Column(name="PAT_ADDRESS",nullable=false)
	@Type(type="text")
	private String pataddress;
	
	@Column(name="Admitdate")
	private String admitdate;
	
	@ManyToOne
	@JoinColumn(name="DOC_ID")
	private Doctor doctor;///duita bich relation establishment
	
	@OneToOne
	@JoinColumn(name="BEDID")
	private Bed bed;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPatid() {
		return patid;
	}

	public void setPatid(String patid) {
		this.patid = patid;
	}

	public String getPatfname() {
		return patfname;
	}

	public void setPatfname(String patfname) {
		this.patfname = patfname;
	}

	public String getPatlname() {
		return patlname;
	}

	public void setPatlname(String patlname) {
		this.patlname = patlname;
	}

	public Long getPatmobile() {
		return patmobile;
	}

	public void setPatmobile(Long patmobile) {
		this.patmobile = patmobile;
	}

	public String getPatdob() {
		return patdob;
	}

	public void setPatdob(String patdob) {
		this.patdob = patdob;
	}

	public String getPatbloodgroup() {
		return patbloodgroup;
	}

	public void setPatbloodgroup(String patbloodgroup) {
		this.patbloodgroup = patbloodgroup;
	}

	public String getPatsex() {
		return patsex;
	}

	public void setPatsex(String patsex) {
		this.patsex = patsex;
	}

	public Short getPatstatus() {
		return patstatus;
	}

	public void setPatstatus(Short patstatus) {
		this.patstatus = patstatus;
	}

	public String getPataddress() {
		return pataddress;
	}

	public void setPataddress(String pataddress) {
		this.pataddress = pataddress;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public Bed getBed() {
		return bed;
	}

	public void setBed(Bed bed) {
		this.bed = bed;
	}

	public String getDocassign() {
		return docassign;
	}

	public void setDocassign(String docassign) {
		this.docassign = docassign;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getAdmitdate() {
		return admitdate;
	}

	public void setAdmitdate(String admitdate){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateInString = admitdate;
		System.out.println(dateInString);
		Date date1 = null;
		try {
			date1 = sdf.parse(dateInString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println(date1);
	    Calendar calendar = Calendar.getInstance();
		calendar.setTime(date1);
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy MMM dd");
		this.admitdate = sdf1.format(calendar.getTime());
	}

	
	
	
	
}
