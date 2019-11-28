package com.about_time.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.about_time.community.service.CommunityService;

@Controller
public class BoardController {
	
	@Autowired
	CommunityService communityService;
	
	@RequestMapping(value = "/community/{title}/list", method = RequestMethod.GET)
	public String boardList_get(@PathVariable("title")String title, Model model) {
		model.addAttribute("title", title);
		return "boardList";
	}
	
	@RequestMapping(value = "/community/{title}/list/edit", method = RequestMethod.GET)
	public String boardEdit_get(@PathVariable("title")String title, Model model) {
		model.addAttribute("title",title);
		return "boardEdit";
	}
}
