package com.mentor.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mentor.spring.dao.PaymentDao;
import com.mentor.spring.model.Payment;
@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired
	PaymentDao dao;
	
	@Override
	@Transactional
	public int addPayment(Payment payment) {
		// TODO Auto-generated method stub
		return dao.addPayment(payment);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Payment> listPayment() {
		// TODO Auto-generated method stub
		return dao.listPayment();
	}

	@Override
	@Transactional(readOnly=true)
	public List<Payment> listPaymentByPatientId(String patid) {
		// TODO Auto-generated method stu
		return dao.listPaymentByPatientId(patid);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Payment> listPaymentFromDate(String startdate, String enddate) {
		// TODO Auto-generated method stub
		return dao.listPaymentFromDate(startdate, enddate);
	}

}
