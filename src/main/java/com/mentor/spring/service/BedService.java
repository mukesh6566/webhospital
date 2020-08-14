package com.mentor.spring.service;

import java.util.List;

import com.mentor.spring.model.Bed;

public interface BedService {
	int addBed(Bed bed);
	List<Bed> listBed();

}
