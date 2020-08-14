package com.mentor.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Schedule")
public class Schedule {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Schedule",nullable=false,updatable=false)
	private Integer scheduleid;
	
	@Column(name="DOC_NAME",nullable=false)
	private String docname;
	
	@Column(name="DEP_NAME",nullable=false)
	private String departname;
	
	@Column(name="SUNDAY",nullable=false)
	private String sunday;
	
	@Column(name="MONDAY",nullable=false)
	private String monday;
	
	@Column(name="TUESDAY",nullable=false)
	private String tuesday;
	
	@Column(name="WEDNESDAY",nullable=false)
	private String wednesday;
	
	@Column(name="THURSDAY",nullable=false)
	private String thursday;
	
	@Column(name="FRIDAY",nullable=false)
	private String friday;
	
	@Column(name="SATURDAY",nullable=false)
	private String saturday;
	
	@Column(name="PAT_TIME",nullable=false)
	private Integer perpatienttime;
	
	@Column(name="SERIAL_VISIBILITY")
	private String serialvisibility;
	
	@Column(name="STATUS",nullable=false)
	private Byte status;

	public Integer getScheduleid() {
		return scheduleid;
	}

	public void setScheduleid(Integer scheduleid) {
		this.scheduleid = scheduleid;
	}

	public String getDocname() {
		return docname;
	}

	public void setDocname(String docname) {
		this.docname = docname;
	}

	public String getDepartname() {
		return departname;
	}

	public void setDepartname(String departname) {
		this.departname = departname;
	}

	public String getSunday() {
		return sunday;
	}

	public void setSunday(String sunday) {
		this.sunday = sunday;
	}

	public String getMonday() {
		return monday;
	}

	public void setMonday(String monday) {
		this.monday = monday;
	}

	public String getTuesday() {
		return tuesday;
	}

	public void setTuesday(String tuesday) {
		this.tuesday = tuesday;
	}

	public String getWednesday() {
		return wednesday;
	}

	public void setWednesday(String wednesday) {
		this.wednesday = wednesday;
	}

	public String getThursday() {
		return thursday;
	}

	public void setThursday(String thursday) {
		this.thursday = thursday;
	}

	public String getFriday() {
		return friday;
	}

	public void setFriday(String friday) {
		this.friday = friday;
	}

	public String getSaturday() {
		return saturday;
	}

	public void setSaturday(String saturday) {
		this.saturday = saturday;
	}

	public Integer getPerpatienttime() {
		return perpatienttime;
	}

	public void setPerpatienttime(Integer perpatienttime) {
		this.perpatienttime = perpatienttime;
	}

	public String getSerialvisibility() {
		return serialvisibility;
	}

	public void setSerialvisibility(String serialvisibility) {
		this.serialvisibility = serialvisibility;
	}

	public Byte getStatus() {
		return status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}
	
	
	
}
