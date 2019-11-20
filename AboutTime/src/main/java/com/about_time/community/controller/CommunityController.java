package com.about_time.community.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.about_time.community.service.CommunityService;

@Controller
public class CommunityController {
	
	@Autowired
	CommunityService communityService;
	
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String universityList_get(Model model) {
		Map<String, List<String>> universityMap = communityService.getAllUniversity();
		model.addAttribute("universityMap", universityMap);
		return "community_universityList";
	}
}
