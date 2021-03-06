package com.about_time.carte.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.about_time.carte.service.CarteService;
import com.about_time.carte.vo.Carte;
import com.about_time.carte.vo.University;

@Controller
public class CarteController {

	@Autowired
	CarteService carteService;

	@RequestMapping("/carte/info")
	public String getUni(@RequestParam("title") String title, Model model) {
		University university = carteService.getUniversity(title);
		model.addAttribute("university", university);
		return "carteInfo";
	}
	
	@RequestMapping("/carte/list")
	public String universityList() {
		return "carte_universityList";
	}
}
