package com.about_time.member.controller;

import java.security.Principal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public ModelAndView query() throws Exception {
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

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register_get() {
		return "register";
	}

	// 회원가입 처리
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public @ResponseBody void register_post(@RequestBody Member member) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		member.setUpw(passwordEncoder.encode(member.getUpw()));
		MemberRole memberRole = new MemberRole();
		memberRole.setUid(member.getUid());
		memberRole.setRoleName("MEMBER");
		member.setRoles(Arrays.asList(memberRole));
		memberService.addMember(member);
	}

	// ID 중복 체크
	@RequestMapping(value = "/register/uid", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> userID(@RequestBody Map<String, String> map) {
		String uid = map.get("userID");
		String check = memberService.existsByUid(uid);
		Map<String, String> msg = new HashMap<>();
		msg.put("check", check);
		return msg;
	}

	// 닉네임 중복 체크
	@RequestMapping(value = "/register/uname", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> userName(@RequestBody Map<String, String> map) {
		String uname = map.get("userName");
		String check = memberService.existsByUname(uname);
		Map<String, String> msg = new HashMap<String, String>();
		msg.put("check", check);
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
	
	//회원 정보 수정 페이지
	@RequestMapping(value = "/member/modifyInfo", method = RequestMethod.GET)
	public String modifyInfo_get(Model model, Principal principal) {
		Member member = memberService.findByUid(principal.getName());
		model.addAttribute("member", member);
		return "modifyInfo";
	}
	
	//회원 정보 수정 요청 처리
	@RequestMapping(value = "/member/modifyInfo", method = RequestMethod.POST)
	public @ResponseBody Map<String,String> modifyInfo_post( @RequestBody Map<String, String> map, Principal principal) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String uid = principal.getName();
		String uname = map.get("uname");
		String email = map.get("email");
		String upw = map.get("upw");	//암호화되지 않은 비밀번호
		String encode_upw = memberService.getEncodeUpw(uid);	//암호화된 비밀번호
		Map<String, String> msg = new HashMap<String, String>();
		
		//PW일치하는지 검사 
		Boolean accord = passwordEncoder.matches(upw, encode_upw); 
		//일치한다면 회원정보 수정후 수정 성공 매세지 추가
		if(accord == true) {
			memberService.updateMemberInfo(uid, uname, email);
			msg.put("check", "success");
		}
		//일치하지 않는다면 실패 매세지 추가
		else {
			msg.put("check", "fail");
		}
		return msg;
	}
	
	//회원 비밀번호 수정 페이지 
	@RequestMapping(value = "/member/modifyPW", method = RequestMethod.GET)
	public String modifyPW_get() {
		return "modifyPW";
	}
	
	//회원 비밀번호 수정 처리
	@RequestMapping(value = "/member/modifyPW", method = RequestMethod.POST)
	public @ResponseBody Map<String,String> modifyPW_post(@RequestBody Map<String,String> map, Principal principal) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String uid = principal.getName();
		String currentUpw = map.get("currentUpw");
		String newUpw = map.get("newUpw");
		String encodeUpw = memberService.getEncodeUpw(uid);
		//pw일치하는지 검사
		boolean accord = passwordEncoder.matches(currentUpw, encodeUpw);
		
		Map<String, String> msg = new HashMap<String, String>();
		//일치한다면 비밀번호 변경
		if(accord == true) {
			memberService.updateMemberUpw(uid,passwordEncoder.encode(newUpw));
			msg.put("check", "success");
		}
		//일치하지 않는다면 실패 매세지 추가
		else {
			msg.put("check", "fail");
		}
		return msg;
	}
}
