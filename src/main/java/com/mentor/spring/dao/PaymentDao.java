package com.mentor.spring.dao;

import java.util.List;

import com.mentor.spring.model.Payment;

public interface PaymentDao {
	
	public int addPayment(Payment payment);
	public List<Payment> listPayment();
	public List<Payment> listPaymentByPatientId(String patid);
	public List<Payment> listPaymentFromDate(String startdate,String enddate);

}
