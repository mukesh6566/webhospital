package com.mentor.spring.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mentor.spring.model.Patient;
import com.mentor.spring.model.Payment;

@Repository
public class PaymentDaoImp implements PaymentDao {
	@Autowired
	SessionFactory factory;

	@Override
	public int addPayment(Payment payment) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(payment);
	}

	@Override
	public List<Payment> listPayment() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Payment> query=factory.getCurrentSession().createQuery("from  Payment");
		return query.getResultList();
	}

	@Override
	public List<Payment> listPaymentByPatientId(String patid) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Payment> query=factory.getCurrentSession().createQuery("from  Payment where patid='"+patid+"'");
		return query.getResultList();
	}

	@Override
	public List<Payment> listPaymentFromDate(String startdate, String enddate) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Payment> query=factory.getCurrentSession().createQuery("from  Payment where date between '"+startdate+"' and '"+enddate+"'");
		return query.getResultList();
	}
	


}
