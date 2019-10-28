package com.about_time.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.about_time.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping("/main.do")
	public ModelAndView query() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv;
	}
	
}
