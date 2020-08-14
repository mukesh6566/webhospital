package com.mentor.spring.dao;

import java.util.List;
import javax.persistence.TypedQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mentor.spring.model.Bed;
import com.mentor.spring.service.BedService;

@Repository
public class BedDaoImp implements BedDao {
	
	@Autowired
	SessionFactory factory;

	@Override
	public int addBed(Bed bed) {
		// TODO Auto-generated method stub
		return (int) factory.getCurrentSession().save(bed);
	}

	@Override
	public List<Bed> listBed() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
	    TypedQuery<Bed> query=factory.getCurrentSession().createQuery("from Bed ORDER BY bedid ASC");
		return query.getResultList();
	}

}
