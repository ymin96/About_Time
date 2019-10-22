package com.about_time.carte.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.about_time.carte.service.CarteService;
import com.about_time.carte.vo.Carte;
import com.about_time.carte.vo.University;

@Controller
public class CarteController {
	
	@Autowired
	CarteService carteService;
	
	@RequestMapping("/carte/info.do")
	public void getUni(@RequestParam("title")String title) {
		University university = carteService.getUniversity(title);
		System.out.println(university.getTitle());
		ArrayList<Carte> carteList = (ArrayList<Carte>) university.getCarteList();
		for(int i = 0; i<carteList.size();i++) {
			Carte carte = carteList.get(i);
			System.out.println(carte.getDay());
		}
	}
}
