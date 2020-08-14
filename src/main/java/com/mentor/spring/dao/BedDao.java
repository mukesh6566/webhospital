package com.mentor.spring.dao;

import java.util.List;
import com.mentor.spring.model.Bed;


public interface BedDao {
	int addBed(Bed bed);
	List<Bed> listBed();

}
