package com.mentor.spring.model;

import javax.validation.constraints.Size;
import java.util.Date;
import java.util.Set;

///import javax.validation.constraints.Size;
import javax.persistence.*;

import org.hibernate.annotations.Type;
import org.springframework.web.multipart.MultipartFile;



@Entity
@Table(name="Doctor")
public class Doctor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="DOC_ID",nullable=false,updatable=false)
	private Integer docid;
	
	@Column(name="DOC_FNAME",nullable=false)
	@Size(max = 20, min = 3, message = "{user.name.invalid}")///This work when we use spring form tag
	private String docfname;
	
	@Column(name="DOC_LFNAME",nullable=false)
	private String doclname;
	
	@Column(name="DOC_EMAIL",nullable=false)
	private String docemail;
	
	@Column(name="DOC_PASSWOED",nullable=false)
	private String docpassword;
	
	@Column(name="DOC_DESIGNATION")
	private String docdesignation;
	
	@Column(name="DOC_DEPARTMENT")
	private String docdepartment;
	
	@Column(name="DOC_ADDRESS")
	private String docaddress;
	
	@Column(name="DOC_SPECIALIST")
	private String docspeciallist;
	
	@Column(name="DOC_MOBILE")
	private Long docmobile;
	
	@Column(name="DOC_PIC")
	private String file;
	
	@Column(name="DOC_BIO")
	@Type(type="text")
	private String docbio;
	
	@Column(name="DOC_BIRTH")
	@Temporal(TemporalType.DATE)
	private Date docbirth;
	
	@Column(name="DOC_BLOODGROUP")
	private String docbloodgroup;
	
	@Column(name="DOC_SEX",nullable=false)
	private String docsex;
	
	@Column(name="DOC_STATUS",nullable=false)
	private String docstatus;
	
	@Column
	@Transient
    private MultipartFile files;
	
	@ManyToOne
	@JoinColumn(name="DEP_ID",foreignKey=@ForeignKey(name="DEP_ID"))
	private Department department;///means that depart xa vane matra doctor hun sak xa
	
	  
/*	   @ManyToOne
	   @JoinColumn(name="DPT_ID",foreignKey=@ForeignKey(name="DPT_ID_FK"))
	   private Department department;*/
	
	/*@OneToMany(mappedBy="doctor",cascade=CascadeType.ALL)
	private Set<Patient> patients;*/
	
	public Integer getDocid() {
		return docid;
	}
	public void setDocid(Integer docid) {
		this.docid = docid;
	}
	public String getDocfname() {
		return docfname;
	}
	public void setDocfname(String docfname) {
		this.docfname = docfname;
	}
	public String getDoclname() {
		return doclname;
	}
	public void setDoclname(String doclname) {
		this.doclname = doclname;
	}
	public String getDocemail() {
		return docemail;
	}
	public void setDocemail(String docemail) {
		this.docemail = docemail;
	}
	public String getDocpassword() {
		return docpassword;
	}
	public void setDocpassword(String docpassword) {
		this.docpassword = docpassword;
	}
	public String getDocdesignation() {
		return docdesignation;
	}
	public void setDocdesignation(String docdesignation) {
		this.docdesignation = docdesignation;
	}
	public String getDocdepartment() {
		return docdepartment;
	}
	public void setDocdepartment(String docdepartment) {
		this.docdepartment = docdepartment;
	}
	public String getDocaddress() {
		return docaddress;
	}
	public void setDocaddress(String docaddress) {
		this.docaddress = docaddress;
	}
	public String getDocspeciallist() {
		return docspeciallist;
	}
	public void setDocspeciallist(String docspeciallist) {
		this.docspeciallist = docspeciallist;
	}
	public Long getDocmobile() {
		return docmobile;
	}
	public void setDocmobile(Long docmobile) {
		this.docmobile = docmobile;
	}

	public String getDocbio() {
		return docbio;
	}
	public void setDocbio(String docbio) {
		this.docbio = docbio;
	}
/*	public String getDocbirth() {
		return docbirth;
	}
	public void setDocbirth(String docbirth) {
		this.docbirth = docbirth;
	}*/
	public String getDocbloodgroup() {
		return docbloodgroup;
	}
	public void setDocbloodgroup(String docbloodgroup) {
		this.docbloodgroup = docbloodgroup;
	}
	public String getDocsex() {
		return docsex;
	}
	public void setDocsex(String docsex) {
		this.docsex = docsex;
	}
	public String getDocstatus() {
		return docstatus;
	}
	public void setDocstatus(String docstatus) {
		this.docstatus = docstatus;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public MultipartFile getFiles() {
		return files;
	}
	public void setFiles(MultipartFile files) {
		this.files = files;
	}
	public void setDocbirth(Date docbirth) {
		this.docbirth = docbirth;
	}
	public Date getDocbirth() {
		return docbirth;
	}
/*	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}*/
/*	public Set<Patient> getPatients() {
		return patients;
	}
	public void setPatients(Set<Patient> patients) {
		this.patients = patients;
	}*/
	
	
	
	

}
