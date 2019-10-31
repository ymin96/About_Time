package com.about_time.member.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.about_time.member.vo.SecurityMember;

@Service
public class CustomUserDetailsService implements UserDetailsService{

	@Autowired
	MemberService memberService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return Optional.ofNullable(memberService.findByUid(username))
				.filter(m -> m!=null)
				.map(m -> new SecurityMember(m)).get();
	}

}
