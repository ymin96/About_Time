package com.about_time.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.about_time.member.service.MemberService;
import com.about_time.member.vo.Member;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping("/query")
	public @ResponseBody List<Member> query() throws Exception{
		return memberService.getAll();
	}
}
