package com.mentor.spring.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="Hospital")
public class Hospital {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="HOSPITALID",nullable=false,updatable=false)
	private Integer hospitalid;
	
	@Column(name="HOSPITALNAME",nullable=false)
	private String hospitalname;
	
	@Column(name="HOSPITALLOCATION",nullable=false)
	private String hospitallocation;
	
	@Column(name="ESTABLISHEDDATE",nullable=false)
	@Temporal(TemporalType.DATE)
	private Date date;
	
	@Column(name="HOSPITALPHONE",nullable=false)
	private Long hospitalphone;
	
	@Column(name="HOSPITALUNAME",nullable=false)
	private String hospitalusername;
	
	@Column(name="HOSPTALPASS",nullable=false)
	private String hospass;
	
	@Column(name="HOSPITALPIC",nullable=false)
	private String hospitalpic;

	public Integer getHospitalid() {
		return hospitalid;
	}

	public void setHospitalid(Integer hospitalid) {
		this.hospitalid = hospitalid;
	}

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public String getHospitallocation() {
		return hospitallocation;
	}

	public void setHospitallocation(String hospitallocation) {
		this.hospitallocation = hospitallocation;
	}

	public Long getHospitalphone() {
		return hospitalphone;
	}

	public void setHospitalphone(Long hospitalphone) {
		this.hospitalphone = hospitalphone;
	}

	public String getHospitalusername() {
		return hospitalusername;
	}

	public void setHospitalusername(String hospitalusername) {
		this.hospitalusername = hospitalusername;
	}


	public String getHospitalpic() {
		return hospitalpic;
	}

	public void setHospitalpic(String hospitalpic) {
		this.hospitalpic = hospitalpic;
	}

	public String getHospass() {
		return hospass;
	}

	public void setHospass(String hospass) {
		this.hospass = hospass;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getDate() {
		return date;
	}


}
