package com.about_time.carte.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.carte.mapper.CarteMapper;
import com.about_time.carte.vo.University;

@Service
public class CarteService {
	
	@Autowired
	CarteMapper carteMapper;
	
	public University getUniversity(String title) {
		University kunsan = new University();
		kunsan.setTitle(title);
		kunsan.setCarteList(carteMapper.getCarte(title));
		return kunsan;
	}
}
