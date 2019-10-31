package com.about_time.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.member.mapper.MemberMapper;
import com.about_time.member.vo.Member;

@Service
public class MemberService {
	@Autowired
	MemberMapper memberMapper;
	
	public List<Member> getAll() throws Exception{
		return memberMapper.getAll();
	}
	
	public Member findByUid(String uid) {
		Member member = null;
		try {
			member = memberMapper.findMemberByUid(uid);
			member.setRoles(memberMapper.findMemberRoleByUid(uid));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member;
	}
}
