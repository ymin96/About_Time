package com.about_time.listener;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.about_time.member.vo.SecurityMember;

@Service
public class LoginSuccess implements ApplicationListener<AuthenticationSuccessEvent>{
	
	@Autowired
	HttpServletRequest request;
	
	@Override
	public void onApplicationEvent(AuthenticationSuccessEvent event) {
		// TODO Auto-generated method stub
		Object principal = event.getAuthentication().getPrincipal();
		SecurityMember user = (SecurityMember)principal;
		
		HttpSession session = request.getSession();
		session.setAttribute("ID", user.getUsername());
	}

}
