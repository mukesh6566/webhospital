package com.mentor.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ScheduleDate")
public class ScheduleDate {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="SHID",nullable=false,updatable=false)
	private Integer shid;
	@Column(name="DEPARTNAME",nullable=false)
	private String departname;
	@Column(name="DOCTORNAME",nullable=false)
	private String doctorname;
	@Column(name="DAY")
	private Integer day;
	@Column(name="DATE")
	private String date;
	@Column(name="time")
	private String time;
	public Integer getShid() {
		return shid;
	}
	public void setShid(Integer shid) {
		this.shid = shid;
	}
	public String getDepartname() {
		return departname;
	}
	public void setDepartname(String departname) {
		this.departname = departname;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public Integer getDay() {
		return day;
	}
	public void setDay(Integer day) {
		this.day = day;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
	
	

}
