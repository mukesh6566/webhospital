package com.mentor.spring.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Bed")
public class Bed {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="BEDID",nullable=false,updatable=false)
	private Integer bedid;
	@Column(name="BEDTYPE",nullable=false)
	private String bedtype;
	@Column(name="BEDDESC",nullable=false)
	private String beddesc;
	@Column(name="BEDCAP",nullable=false)
	private String bedcap;
	@Column(name="GENDER",nullable=false)
	private String gender;
	@Column(name="STATUS",nullable=false)
	private String status;
	@OneToOne(mappedBy="bed",cascade=CascadeType.ALL)
	private Patient patient;
	
	public Integer getBedid() {
		return bedid;
	}
	public void setBedid(Integer bedid) {
		this.bedid = bedid;
	}
	public String getBedtype() {
		return bedtype;
	}
	public void setBedtype(String bedtype) {
		this.bedtype = bedtype;
	}
	public String getBeddesc() {
		return beddesc;
	}
	public void setBeddesc(String beddesc) {
		this.beddesc = beddesc;
	}
	public String getBedcap() {
		return bedcap;
	}
	public void setBedcap(String bedcap) {
		this.bedcap = bedcap;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
