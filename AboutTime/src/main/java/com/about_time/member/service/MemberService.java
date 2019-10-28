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
}
