package com.mentor.spring.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name="Department")
public class Department {
	/*   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name = "DPT_ID")
	   private long id;*/
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="DEP_ID")
	private Integer departmentid;
	   
	@Column(name="DEP_NAME",nullable=false)
	private String departmentname;
	
	@Column(name="DEP_DESCRIPTION")
	@Type(type="text")
	private String departmentdescription;
	
	@Column(name="DEP_STARUS",nullable=false)
	private Short status;
	
	@OneToMany(mappedBy="department",cascade=CascadeType.ALL)
	private Set<Doctor> doctors;
	
	
	public Integer getDepartmentid() {
		return departmentid;
	}
	public void setDepartmentid(Integer departmentid) {
		this.departmentid = departmentid;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public Short getStatus() {
		return status;
	}
	public void setStatus(Short status) {
		this.status = status;
	}
	public String getDepartmentdescription() {
		return departmentdescription;
	}
	public void setDepartmentdescription(String departmentdescription) {
		this.departmentdescription = departmentdescription;
	}
	
	public Set<Doctor> getDoctors() {
		return doctors;
	}
	public void setDoctors(Set<Doctor> doctors) {
		this.doctors = doctors;
	}
/*	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}*/

}
