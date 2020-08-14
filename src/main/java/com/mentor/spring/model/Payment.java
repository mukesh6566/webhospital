package com.mentor.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Payments")
public class Payment {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="paymentid",nullable=false,updatable=false)
	private Integer paymentid;
	@Column(name="Diagnotype")
	private String diagnotype;
	@Column(name="Date")
	private String date;
	@Column(name="TotAmount")
	private String totamount;
	@Column(name="Patid")
	private String patid;
	public Integer getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(Integer paymentid) {
		this.paymentid = paymentid;
	}
	public String getDiagnotype() {
		return diagnotype;
	}
	public void setDiagnotype(String diagnotype) {
		this.diagnotype = diagnotype;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTotamount() {
		return totamount;
	}
	public void setTotamount(String totamount) {
		this.totamount = totamount;
	}
	public String getPatid() {
		return patid;
	}
	public void setPatid(String patid) {
		this.patid = patid;
	}
	

}
