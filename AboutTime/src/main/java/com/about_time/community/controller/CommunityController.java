package com.about_time.community.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.about_time.community.service.CommunityService;

@Controller
public class CommunityController {

	@Autowired
	CommunityService communityService;

	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String universityList_get(Model model, @RequestParam(required = false, name = "title") String title) {
		Map<String, List<String>> universityMap;
		if (title == null) {
			universityMap = communityService.getAllUniversity();
		}
		else {
			title = title.replace(" ", "");
			universityMap = communityService.getUniversityByTitle(title);
		}
		
		model.addAttribute("universityMap", universityMap);
		return "community_universityList";
	}
	
	@RequestMapping(value = "/community/{university}")
	public String UniversityMainPage(@PathVariable("university")String university, Model model) {
		model.addAttribute("university", university);
		return "universityMain";
	}
}
