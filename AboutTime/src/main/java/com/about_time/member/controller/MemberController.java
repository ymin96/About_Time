package com.about_time.member.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.about_time.member.service.MemberService;
import com.about_time.member.vo.Member;
import com.about_time.member.vo.MemberRole;

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
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/test")
	public String test() {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		 Member member = new Member();
		 member.setUid("admin");
		 member.setUpw(passwordEncoder.encode("admin"));
		 member.setEmail("admin@test.com");
		 MemberRole memberRole = new MemberRole();
		 memberRole.setUid("admin");
		 memberRole.setRoleName("ADMIN");
		 member.setRoles(Arrays.asList(memberRole));
		 memberService.addMember(member);
		return "main";
	}
}
