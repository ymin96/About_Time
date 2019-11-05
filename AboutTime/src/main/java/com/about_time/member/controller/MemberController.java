package com.about_time.member.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("ID");
		return "main";
	}
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String register_get() {
		return "register";
	}
	
	@RequestMapping(value="/register/uid", method=RequestMethod.POST)
	public @ResponseBody Map<String,String> register_post(@RequestBody Map<String,String> map) {
		String uid = map.get("userid");
		Map<String, String> msg = new HashMap<>();
		msg.put("check", "True");
		return msg;
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
