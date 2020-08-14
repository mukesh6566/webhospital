package com.mentor.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="appointment")
public class Appointment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="APPOINT_NO",nullable=false,updatable=false)
	private Integer appointno;
	
	@Column(name="DOCTOR_NAME")
	private String docname;
	
	@Column(name="FULL_NAME")
	private String fullname;
	
	@Column(name="GENDER")
	private String gender;
	
	@Column(name="MOBILE_NUMBER")
	private Long mobnumber;
	
	@Column(name="DOB")
	private String dob;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="ADDESS")
	public String address;
	
	@Column(name="APPOINTMENT_DATE")
	private String appointmentdate;
	
	@Column(name="DESCRIPTION")
	private String description;
	
	@Column(name="STATUS",columnDefinition = "Integer default 0")
	private Integer status;
	
	@Column(name="REPLY")
	private String replymessage;
	
	public Integer getAppointno() {
		return appointno;
	}
	public void setAppointno(Integer appointno) {
		this.appointno = appointno;
	}
	public String getDocname() {
		return docname;
	}
	public void setDocname(String docname) {
		this.docname = docname;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Long getMobnumber() {
		return mobnumber;
	}
	public void setMobnumber(Long mobnumber) {
		this.mobnumber = mobnumber;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAppointmentdate() {
		return appointmentdate;
	}
	public void setAppointmentdate(String appointmentdate) {
		this.appointmentdate = appointmentdate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getReplymessage() {
		return replymessage;
	}
	public void setReplymessage(String replymessage) {
		this.replymessage = replymessage;
	}

}
