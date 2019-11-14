package com.about_time.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.about_time.member.mapper.MemberMapper;
import com.about_time.member.vo.Member;

@Service
public class MemberService {
	@Autowired
	MemberMapper memberMapper;

	public List<Member> getAll() throws Exception {
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

	public void addMember(Member member) {
		try {
			memberMapper.insertMember(member);
			member.getRoles().forEach(e -> {
				try {
					memberMapper.insertMemberRole(e);
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ID존재 여부 검사
	public String existsByUid(String uid) {
		int success = memberMapper.existsByUid(uid);
		return success == 1 ? "True" : "False";
	}

	// 닉네임 존재 여부 검사
	public String existsByUname(String uname) {
		int success = memberMapper.existsByUname(uname);
		return success == 1 ? "True" : "False";
	}

	// PW일치 검사
	public String isAccord(String uid, String upw) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("uid", uid);
		map.put("upw",upw);
		int success = memberMapper.isAccord(map);
		return success == 1 ? "True" : "False";
	}
	
	//회원 정보 업데이트
	public void updateMemberInfo(String uid, String uname, String email) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("uid", uid);
		map.put("uname", uname);
		map.put("email", email);
		memberMapper.updateMemberInfo(map);
	}
	
	//인코딩된 비밀번호 추출
	public String getEncodeUpw(String uid) {
		return memberMapper.getEncodeUpw(uid);
	}
}
