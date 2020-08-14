package com.mentor.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Feedback")
public class Feedback {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="Feedback",nullable=false,updatable=false)
	private Integer feedbackid;
	@Column(name="Name")
	private String name;
	@Column(name="Email")
	private String email;
	@Column(name="Messsage")
	private String message;
	
	public Integer getFeedbackid() {
		return feedbackid;
	}
	public void setFeedbackid(Integer feedbackid) {
		this.feedbackid = feedbackid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
