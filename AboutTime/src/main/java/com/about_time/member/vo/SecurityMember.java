package com.about_time.member.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class SecurityMember extends User{
	private static final String ROLE_FREFIX = "ROLE_";
	private static final long serialVersionUID = 1L;
	
	
	public SecurityMember(Member member) {
		super(member.getUid(),member.getUpw(),makeGrantedAuthority(member.getRoles()));
		// TODO Auto-generated constructor stub
	}
	
	private static List<GrantedAuthority> makeGrantedAuthority(List<MemberRole> roles){
		List<GrantedAuthority> list = new ArrayList<GrantedAuthority>();
		roles.forEach(role -> list.add(new SimpleGrantedAuthority(ROLE_FREFIX + role.getRoleName())));
		return list;
	}
}
